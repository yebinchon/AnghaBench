
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct gr_udc {int lock; int * driver; } ;


 int gr_stop_activity (struct gr_udc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct gr_udc* to_gr_udc (struct usb_gadget*) ;

__attribute__((used)) static int gr_udc_stop(struct usb_gadget *gadget)
{
 struct gr_udc *dev = to_gr_udc(gadget);
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);

 dev->driver = ((void*)0);
 gr_stop_activity(dev);

 spin_unlock_irqrestore(&dev->lock, flags);

 return 0;
}
