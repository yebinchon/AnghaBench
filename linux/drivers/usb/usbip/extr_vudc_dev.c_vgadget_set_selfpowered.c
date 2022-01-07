
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int devstatus; } ;
struct usb_gadget {int dummy; } ;


 int USB_DEVICE_SELF_POWERED ;
 struct vudc* usb_gadget_to_vudc (struct usb_gadget*) ;

__attribute__((used)) static int vgadget_set_selfpowered(struct usb_gadget *_gadget, int value)
{
 struct vudc *udc = usb_gadget_to_vudc(_gadget);

 if (value)
  udc->devstatus |= (1 << USB_DEVICE_SELF_POWERED);
 else
  udc->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);
 return 0;
}
