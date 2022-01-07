
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int GOV_TLED ;
 int LED_OFF ;
 int LED_ON ;
 scalar_t__ ggov (int ) ;

__attribute__((used)) static enum led_brightness tpad_led_get(struct led_classdev *cdev)
{
 return ggov(GOV_TLED) > 0 ? LED_ON : LED_OFF;
}
