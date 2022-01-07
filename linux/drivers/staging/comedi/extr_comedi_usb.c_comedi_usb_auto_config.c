
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct comedi_driver {int dummy; } ;


 int comedi_auto_config (int *,struct comedi_driver*,unsigned long) ;

int comedi_usb_auto_config(struct usb_interface *intf,
      struct comedi_driver *driver,
      unsigned long context)
{
 return comedi_auto_config(&intf->dev, driver, context);
}
