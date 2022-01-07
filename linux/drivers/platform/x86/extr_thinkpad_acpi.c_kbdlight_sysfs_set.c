
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int kbdlight_set_level (int) ;

__attribute__((used)) static int kbdlight_sysfs_set(struct led_classdev *led_cdev,
   enum led_brightness brightness)
{
 return kbdlight_set_level(brightness);
}
