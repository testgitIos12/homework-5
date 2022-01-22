//
//  MyTableViewCell.swift
//  homework 5
//
//  Created by Samir Maksutov on 21/1/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    public func configure(with title: String, imageName: String) {
        mylabel.text = title
        myImageView.image = UIImage(systemName: imageName)
    }
    
    
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var mylabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myImageView.contentMode = .scaleAspectFit
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
