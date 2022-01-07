
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xusb_udc {int (* read_fn ) (scalar_t__) ;scalar_t__ addr; } ;
struct usb_gadget {int dummy; } ;


 int ENODEV ;
 scalar_t__ XUSB_FRAMENUM_OFFSET ;
 int stub1 (scalar_t__) ;
 struct xusb_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int xudc_get_frame(struct usb_gadget *gadget)
{
 struct xusb_udc *udc;
 int frame;

 if (!gadget)
  return -ENODEV;

 udc = to_udc(gadget);
 frame = udc->read_fn(udc->addr + XUSB_FRAMENUM_OFFSET);
 return frame;
}
