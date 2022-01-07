
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {struct raw3270* dev; } ;
struct raw3270 {int cdev; int flags; } ;


 int RAW3270_FLAGS_FROZEN ;
 int ccw_device_force_console (int ) ;
 scalar_t__ test_bit (int ,int *) ;

void raw3270_pm_unfreeze(struct raw3270_view *view)
{







}
