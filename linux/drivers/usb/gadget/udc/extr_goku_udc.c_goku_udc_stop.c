
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct goku_udc {int lock; int * driver; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_activity (struct goku_udc*) ;
 struct goku_udc* to_goku_udc (struct usb_gadget*) ;

__attribute__((used)) static int goku_udc_stop(struct usb_gadget *g)
{
 struct goku_udc *dev = to_goku_udc(g);
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 dev->driver = ((void*)0);
 stop_activity(dev);
 spin_unlock_irqrestore(&dev->lock, flags);

 return 0;
}
