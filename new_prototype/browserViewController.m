//
//  browserViewController.m
//  new_prototype
//
//  Created by 瀚陽 王 on 2014/12/7.
//  Copyright (c) 2014年 瀚陽 王. All rights reserved.
//

#import "browserViewController.h"

@interface browserViewController ()

<UIGestureRecognizerDelegate,UIWebViewDelegate,NSURLSessionDelegate,UIDocumentInteractionControllerDelegate>

@property (strong ,nonatomic) NSString *fnumber ;

@end

@implementation browserViewController

- (void)viewDidLoad {
    
     NSLog(@"first:%@",self.data.final_number);
    _fnumber=self.data.final_number;
    
    
    [super viewDidLoad];
    
    }
- (IBAction)to_browser:(id)sender {
    
    NSString *url1 = @"http://npm-ebook.herokuapp.com/books/";
    
    /*while (self.data.final_number==NULL) {
        NSLog(@"while:%@",self.data.final_number);
    }*/

    
    NSLog(@"test1:%@",_fnumber);
    //NSString *add_number = [[NSString alloc] initWithFormat:@"%@",self.data.final_number];
    NSString *add_number = [[NSString alloc] initWithFormat:@"%@",_fnumber];
    NSLog(@"test2:%@",_fnumber);
    NSString *url3 = @"/show";
    
    NSString *fullURL = [NSString stringWithFormat:@"%@%@%@", url1,add_number,url3];
    NSLog(@"browser:%@",fullURL);
    
    NSString *mybooks = @"http://npm-ebook.herokuapp.com/mybooks";
    
    
    //NSURL *url = [NSURL URLWithString:fullURL];
    
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:fullURL]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:mybooks]];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
