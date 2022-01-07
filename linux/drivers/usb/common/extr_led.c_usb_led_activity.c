
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_trigger {int dummy; } ;
typedef enum usb_led_event { ____Placeholder_usb_led_event } usb_led_event ;




 int led_trigger_blink_oneshot (struct led_trigger*,int *,int *,int ) ;
 struct led_trigger* ledtrig_usb_gadget ;
 struct led_trigger* ledtrig_usb_host ;
 int usb_blink_delay ;

void usb_led_activity(enum usb_led_event ev)
{
 struct led_trigger *trig = ((void*)0);

 switch (ev) {
 case 129:
  trig = ledtrig_usb_gadget;
  break;
 case 128:
  trig = ledtrig_usb_host;
  break;
 }

 led_trigger_blink_oneshot(trig, &usb_blink_delay, &usb_blink_delay, 0);
}
