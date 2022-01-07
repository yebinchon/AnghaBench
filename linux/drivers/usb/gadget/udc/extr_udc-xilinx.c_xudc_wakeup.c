
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xusb_udc {int lock; scalar_t__ addr; int (* write_fn ) (scalar_t__,scalar_t__,int ) ;int (* read_fn ) (scalar_t__) ;int remote_wkp; } ;
struct usb_gadget {int dummy; } ;


 int EINVAL ;
 scalar_t__ XUSB_CONTROL_OFFSET ;
 int XUSB_CONTROL_USB_RMTWAKE_MASK ;
 int mdelay (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (scalar_t__) ;
 int stub2 (scalar_t__,scalar_t__,int ) ;
 int stub3 (scalar_t__,scalar_t__,int ) ;
 struct xusb_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int xudc_wakeup(struct usb_gadget *gadget)
{
 struct xusb_udc *udc = to_udc(gadget);
 u32 crtlreg;
 int status = -EINVAL;
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);


 if (!udc->remote_wkp)
  goto done;

 crtlreg = udc->read_fn(udc->addr + XUSB_CONTROL_OFFSET);
 crtlreg |= XUSB_CONTROL_USB_RMTWAKE_MASK;

 udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);




 mdelay(2);

 crtlreg &= ~XUSB_CONTROL_USB_RMTWAKE_MASK;
 udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);
 status = 0;
done:
 spin_unlock_irqrestore(&udc->lock, flags);
 return status;
}
