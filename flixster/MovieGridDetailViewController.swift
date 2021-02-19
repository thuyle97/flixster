//
//  MovieGridDetailViewController.swift
//  flixster
//
//  Created by Le Thuy on 2/18/21.
//

import UIKit
import AlamofireImage

class MovieGridDetailViewController: UIViewController {

    @IBOutlet weak var backdropPoster: UIImageView!
    @IBOutlet weak var profilePoster: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        dateLabel.text = movie["release_date"] as? String
        dateLabel.sizeToFit()
        
        // For the poster picture
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL (string: baseUrl + posterPath)
        
        profilePoster.af_setImage(withURL: posterUrl!)
        
        // For the backDrop picture
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL (string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropPoster.af_setImage(withURL: backdropUrl!)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
