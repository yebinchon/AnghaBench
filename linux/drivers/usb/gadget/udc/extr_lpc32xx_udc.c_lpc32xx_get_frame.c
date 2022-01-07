
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int lock; int clocked; } ;


 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct lpc32xx_udc* to_udc (struct usb_gadget*) ;
 scalar_t__ udc_get_current_frame (struct lpc32xx_udc*) ;

__attribute__((used)) static int lpc32xx_get_frame(struct usb_gadget *gadget)
{
 int frame;
 unsigned long flags;
 struct lpc32xx_udc *udc = to_udc(gadget);

 if (!udc->clocked)
  return -EINVAL;

 spin_lock_irqsave(&udc->lock, flags);

 frame = (int) udc_get_current_frame(udc);

 spin_unlock_irqrestore(&udc->lock, flags);

 return frame;
}
