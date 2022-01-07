
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_OFF ;
 int led_off () ;
 int led_on () ;

__attribute__((used)) static void dell_led_set(struct led_classdev *led_cdev,
    enum led_brightness value)
{
 if (value == LED_OFF)
  led_off();
 else
  led_on();
}
