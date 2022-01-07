
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {int lock; scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int ) ;int (* read_fn ) (scalar_t__) ;} ;
struct usb_gadget {int dummy; } ;


 scalar_t__ XUSB_CONTROL_OFFSET ;
 int XUSB_CONTROL_USB_READY_MASK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int ) ;
 struct xusb_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int xudc_pullup(struct usb_gadget *gadget, int is_on)
{
 struct xusb_udc *udc = to_udc(gadget);
 unsigned long flags;
 u32 crtlreg;

 spin_lock_irqsave(&udc->lock, flags);

 crtlreg = udc->read_fn(udc->addr + XUSB_CONTROL_OFFSET);
 if (is_on)
  crtlreg |= XUSB_CONTROL_USB_READY_MASK;
 else
  crtlreg &= ~XUSB_CONTROL_USB_READY_MASK;

 udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);

 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
