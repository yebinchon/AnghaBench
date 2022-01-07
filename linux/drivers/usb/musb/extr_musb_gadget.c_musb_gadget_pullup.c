
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct musb {int softconnect; int lock; int gadget_work; } ;


 struct musb* gadget_to_musb (struct usb_gadget*) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int musb_gadget_pullup(struct usb_gadget *gadget, int is_on)
{
 struct musb *musb = gadget_to_musb(gadget);
 unsigned long flags;

 is_on = !!is_on;




 spin_lock_irqsave(&musb->lock, flags);
 if (is_on != musb->softconnect) {
  musb->softconnect = is_on;
  schedule_delayed_work(&musb->gadget_work, 0);
 }
 spin_unlock_irqrestore(&musb->lock, flags);

 return 0;
}
