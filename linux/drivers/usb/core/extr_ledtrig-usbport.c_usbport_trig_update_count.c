
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbport_trig_data {scalar_t__ count; struct led_classdev* led_cdev; } ;
struct led_classdev {int dummy; } ;


 int LED_FULL ;
 int LED_OFF ;
 int led_set_brightness (struct led_classdev*,int ) ;
 int usb_for_each_dev (struct usbport_trig_data*,int ) ;
 int usbport_trig_usb_dev_check ;

__attribute__((used)) static void usbport_trig_update_count(struct usbport_trig_data *usbport_data)
{
 struct led_classdev *led_cdev = usbport_data->led_cdev;

 usbport_data->count = 0;
 usb_for_each_dev(usbport_data, usbport_trig_usb_dev_check);
 led_set_brightness(led_cdev, usbport_data->count ? LED_FULL : LED_OFF);
}
