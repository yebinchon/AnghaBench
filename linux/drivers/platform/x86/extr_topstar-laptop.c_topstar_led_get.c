
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int brightness; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;



__attribute__((used)) static enum led_brightness topstar_led_get(struct led_classdev *led)
{
 return led->brightness;
}
