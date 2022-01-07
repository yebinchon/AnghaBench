
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;


 int usb_composite_probe (int *) ;
 int usbg_driver ;

__attribute__((used)) static int usbg_attach(struct usb_function_instance *f)
{
 return usb_composite_probe(&usbg_driver);
}
