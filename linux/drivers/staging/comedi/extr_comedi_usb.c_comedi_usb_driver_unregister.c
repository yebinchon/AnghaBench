
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_driver {int dummy; } ;
struct comedi_driver {int dummy; } ;


 int comedi_driver_unregister (struct comedi_driver*) ;
 int usb_deregister (struct usb_driver*) ;

void comedi_usb_driver_unregister(struct comedi_driver *comedi_driver,
      struct usb_driver *usb_driver)
{
 usb_deregister(usb_driver);
 comedi_driver_unregister(comedi_driver);
}
