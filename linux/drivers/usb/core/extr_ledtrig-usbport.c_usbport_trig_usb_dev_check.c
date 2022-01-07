
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbport_trig_data {int count; } ;
struct usb_device {int dummy; } ;


 scalar_t__ usbport_trig_usb_dev_observed (struct usbport_trig_data*,struct usb_device*) ;

__attribute__((used)) static int usbport_trig_usb_dev_check(struct usb_device *usb_dev, void *data)
{
 struct usbport_trig_data *usbport_data = data;

 if (usbport_trig_usb_dev_observed(usbport_data, usb_dev))
  usbport_data->count++;

 return 0;
}
