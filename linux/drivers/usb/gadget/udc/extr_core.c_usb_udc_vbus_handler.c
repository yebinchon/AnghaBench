
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_udc {int vbus; } ;
struct usb_gadget {struct usb_udc* udc; } ;


 int usb_udc_connect_control (struct usb_udc*) ;

void usb_udc_vbus_handler(struct usb_gadget *gadget, bool status)
{
 struct usb_udc *udc = gadget->udc;

 if (udc) {
  udc->vbus = status;
  usb_udc_connect_control(udc);
 }
}
