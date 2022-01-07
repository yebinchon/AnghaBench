
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int flags; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_UNREGISTERING ;
 int do_kbd_led_set (struct led_classdev*,int) ;

__attribute__((used)) static void kbd_led_set(struct led_classdev *led_cdev,
   enum led_brightness value)
{

 if (led_cdev->flags & LED_UNREGISTERING)
  return;

 do_kbd_led_set(led_cdev, value);
}
