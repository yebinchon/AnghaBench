
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct at91_udc {int enabled; int lock; } ;


 int pullup (struct at91_udc*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct at91_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int at91_pullup(struct usb_gadget *gadget, int is_on)
{
 struct at91_udc *udc = to_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 udc->enabled = is_on = !!is_on;
 pullup(udc, is_on);
 spin_unlock_irqrestore(&udc->lock, flags);
 return 0;
}
