//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Ryan Liszewski on 12/30/17.
//  Copyright © 2017 ImThere. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

  @IBOutlet weak var tipSettingSegmentedControl: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let defaults = UserDefaults.standard
    let defaultTip = defaults.integer(forKey: "Default_Tip")
    tipSettingSegmentedControl.selectedSegmentIndex = defaultTip
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func onTipSettingSegmentedControlChanged(_ sender: Any) {
    let defaults = UserDefaults.standard
    defaults.set(tipSettingSegmentedControl.selectedSegmentIndex, forKey: "Default_Tip")
    defaults.synchronize()
  }
}
