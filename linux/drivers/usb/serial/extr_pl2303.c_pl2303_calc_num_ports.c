
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_endpoints {int num_interrupt_in; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 unsigned long PL2303_QUIRK_ENDPOINT_HACK ;
 int dev_err (struct device*,char*) ;
 int pl2303_endpoint_hack (struct usb_serial*,struct usb_serial_endpoints*) ;
 scalar_t__ usb_get_serial_data (struct usb_serial*) ;

__attribute__((used)) static int pl2303_calc_num_ports(struct usb_serial *serial,
     struct usb_serial_endpoints *epds)
{
 unsigned long quirks = (unsigned long)usb_get_serial_data(serial);
 struct device *dev = &serial->interface->dev;
 int ret;

 if (quirks & PL2303_QUIRK_ENDPOINT_HACK) {
  ret = pl2303_endpoint_hack(serial, epds);
  if (ret)
   return ret;
 }

 if (epds->num_interrupt_in < 1) {
  dev_err(dev, "required interrupt-in endpoint missing\n");
  return -ENODEV;
 }

 return 1;
}
