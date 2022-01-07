
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int kbdlight_get_level () ;

__attribute__((used)) static enum led_brightness kbdlight_sysfs_get(struct led_classdev *led_cdev)
{
 int level;

 level = kbdlight_get_level();
 if (level < 0)
  return 0;

 return level;
}
