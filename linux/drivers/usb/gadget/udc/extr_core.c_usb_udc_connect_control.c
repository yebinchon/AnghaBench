
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_udc {int gadget; scalar_t__ vbus; } ;


 int usb_gadget_connect (int ) ;
 int usb_gadget_disconnect (int ) ;

__attribute__((used)) static void usb_udc_connect_control(struct usb_udc *udc)
{
 if (udc->vbus)
  usb_gadget_connect(udc->gadget);
 else
  usb_gadget_disconnect(udc->gadget);
}
