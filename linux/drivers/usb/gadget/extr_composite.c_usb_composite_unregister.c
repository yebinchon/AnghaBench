
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_composite_driver {int gadget_driver; } ;


 int usb_gadget_unregister_driver (int *) ;

void usb_composite_unregister(struct usb_composite_driver *driver)
{
 usb_gadget_unregister_driver(&driver->gadget_driver);
}
