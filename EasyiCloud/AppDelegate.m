//
//  AppDelegate.m
//  EasyiCloud
//
//  Created by app-01 on 2017/1/30.
//  Copyright © 2017年 owspace. All rights reserved.
//

#import "AppDelegate.h"
#import "CoreDataHelper.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[CoreDataHelper sharedHelper] iCloudAccountIsSignedIn];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[CoreDataHelper sharedHelper] backgroundSaveContext];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Running %@ '%@",self.class,NSStringFromSelector(_cmd));
    [[CoreDataHelper sharedHelper] ensureAppropriateStoreIsLoaded];
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    [[CoreDataHelper sharedHelper] backgroundSaveContext];
}


@end
