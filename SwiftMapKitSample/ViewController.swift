//
//  ViewController.swift
//  SwiftMapKitSample
//
//  Created by Virendra on 7/16/15.


import UIKit
import MapKit

class ViewController: UIViewController ,MKMapViewDelegate {

    @IBOutlet var theMapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var latitude:CLLocationDegrees = 48.399193;
        var longitude:CLLocationDegrees = 9.993341;
        
        var latDelta:CLLocationDegrees = 0.01;
        var longDelta:CLLocationDegrees = 0.01;
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta);
        
        var chruchLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude);
        
        var theRegion:MKCoordinateRegion =  MKCoordinateRegionMake(chruchLocation, theSpan);
        
        self.theMapView.setRegion(theRegion, animated: true);
        
        var theULMinsterAnnotation = MKPointAnnotation();
        theULMinsterAnnotation.coordinate = chruchLocation;
        
        theULMinsterAnnotation.title = "The chruch"
        theULMinsterAnnotation.subtitle = "This a very famouse church"
        
        self.theMapView.addAnnotation(theULMinsterAnnotation);
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

