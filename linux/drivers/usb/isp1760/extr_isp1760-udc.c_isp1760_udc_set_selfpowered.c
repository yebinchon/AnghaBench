
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct isp1760_udc {int devstatus; } ;


 int USB_DEVICE_SELF_POWERED ;
 struct isp1760_udc* gadget_to_udc (struct usb_gadget*) ;

__attribute__((used)) static int isp1760_udc_set_selfpowered(struct usb_gadget *gadget,
           int is_selfpowered)
{
 struct isp1760_udc *udc = gadget_to_udc(gadget);

 if (is_selfpowered)
  udc->devstatus |= 1 << USB_DEVICE_SELF_POWERED;
 else
  udc->devstatus &= ~(1 << USB_DEVICE_SELF_POWERED);

 return 0;
}
