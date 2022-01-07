
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 scalar_t__ WMAX ;
 int alienware_update_led (int *) ;
 int global_brightness ;
 scalar_t__ interface ;
 int pr_err (char*) ;
 int wmax_brightness (int) ;
 int * zone_data ;

__attribute__((used)) static void global_led_set(struct led_classdev *led_cdev,
      enum led_brightness brightness)
{
 int ret;
 global_brightness = brightness;
 if (interface == WMAX)
  ret = wmax_brightness(brightness);
 else
  ret = alienware_update_led(&zone_data[0]);
 if (ret)
  pr_err("LED brightness update failed\n");
}
