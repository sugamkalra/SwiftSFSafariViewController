//
//  ViewController.swift
//  SwiftySFSafariViewController
//
//  Created by Sugam Kalra on 03/05/17.
//  Copyright © 2017 Sugam Kalra. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: SFSafariViewController Button Functionality Methods
    
    /**
     Method to launch the SFSafariViewController With Reader if Available
     
     @param sender: UIButton
     
     @return nil
     */
    @IBAction func launchWithReaderView(_ sender: UIButton)
    {
        let sfSVC = SFSafariViewController(url: URL(string: "https://facebook.github.io/react-native/docs/getting-started.html")!, entersReaderIfAvailable: true)
        
        sfSVC.modalPresentationStyle = .popover
        
        self.present(sfSVC, animated: true, completion: nil)
    }

    /**
     Method to launch the SFSafariViewController Without Reader if Available
     
     @param sender: UIButton
     
     @return nil
     */
    @IBAction func launchWithoutReaderView(_ sender: UIButton)
    {
        let sfSVC = SFSafariViewController(url: URL(string: "https://facebook.github.io/react-native/docs/getting-started.html")!, entersReaderIfAvailable: false)
        
        sfSVC.modalPresentationStyle = .popover
        
        self.present(sfSVC, animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

