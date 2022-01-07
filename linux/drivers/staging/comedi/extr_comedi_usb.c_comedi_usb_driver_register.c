
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int dummy; } ;
struct comedi_driver {int dummy; } ;


 int comedi_driver_register (struct comedi_driver*) ;
 int comedi_driver_unregister (struct comedi_driver*) ;
 int usb_register (struct usb_driver*) ;

int comedi_usb_driver_register(struct comedi_driver *comedi_driver,
          struct usb_driver *usb_driver)
{
 int ret;

 ret = comedi_driver_register(comedi_driver);
 if (ret < 0)
  return ret;

 ret = usb_register(usb_driver);
 if (ret < 0) {
  comedi_driver_unregister(comedi_driver);
  return ret;
 }

 return 0;
}
