
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vudc {int lock; int * driver; } ;
struct usb_gadget {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vudc* usb_gadget_to_vudc (struct usb_gadget*) ;

__attribute__((used)) static int vgadget_udc_stop(struct usb_gadget *g)
{
 struct vudc *udc = usb_gadget_to_vudc(g);
 unsigned long flags;

 spin_lock_irqsave(&udc->lock, flags);
 udc->driver = ((void*)0);
 spin_unlock_irqrestore(&udc->lock, flags);
 return 0;
}
