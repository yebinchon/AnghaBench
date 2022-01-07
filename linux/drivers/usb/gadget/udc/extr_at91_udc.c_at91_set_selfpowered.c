
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int is_selfpowered; } ;
struct at91_udc {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct at91_udc* to_udc (struct usb_gadget*) ;

__attribute__((used)) static int at91_set_selfpowered(struct usb_gadget *gadget, int is_on)
{
 struct at91_udc *udc = to_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 gadget->is_selfpowered = (is_on != 0);
 spin_unlock_irqrestore(&udc->lock, flags);
 return 0;
}
