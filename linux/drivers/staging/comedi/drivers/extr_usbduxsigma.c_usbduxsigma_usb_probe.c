
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int comedi_usb_auto_config (struct usb_interface*,int *,int ) ;
 int usbduxsigma_driver ;

__attribute__((used)) static int usbduxsigma_usb_probe(struct usb_interface *intf,
     const struct usb_device_id *id)
{
 return comedi_usb_auto_config(intf, &usbduxsigma_driver, 0);
}
