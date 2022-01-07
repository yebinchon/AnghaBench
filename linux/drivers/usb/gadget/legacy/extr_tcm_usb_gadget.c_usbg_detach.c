
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int dummy; } ;


 int usb_composite_unregister (int *) ;
 int usbg_driver ;

__attribute__((used)) static void usbg_detach(struct usb_function_instance *f)
{
 usb_composite_unregister(&usbg_driver);
}
