
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget_driver {int (* reset ) (struct usb_gadget*) ;} ;
struct usb_gadget {int dummy; } ;


 int USB_STATE_DEFAULT ;
 int stub1 (struct usb_gadget*) ;
 int usb_gadget_set_state (struct usb_gadget*,int ) ;

void usb_gadget_udc_reset(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 driver->reset(gadget);
 usb_gadget_set_state(gadget, USB_STATE_DEFAULT);
}
