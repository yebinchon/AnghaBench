
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int brightness_set; } ;


 int brightness_set_exit ;
 TYPE_1__ kbd_led ;
 int kbd_led_present ;
 int led_classdev_unregister (TYPE_1__*) ;

__attribute__((used)) static void kbd_led_exit(void)
{
 if (!kbd_led_present)
  return;
 kbd_led.brightness_set = brightness_set_exit;
 led_classdev_unregister(&kbd_led);
}
