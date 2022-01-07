
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;


 int comedi_auto_unconfig (int *) ;

void comedi_usb_auto_unconfig(struct usb_interface *intf)
{
 comedi_auto_unconfig(&intf->dev);
}
