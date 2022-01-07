
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct fotg210_udc {int lock; int * driver; } ;


 int fotg210_init (struct fotg210_udc*) ;
 struct fotg210_udc* gadget_to_fotg210 (struct usb_gadget*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fotg210_udc_stop(struct usb_gadget *g)
{
 struct fotg210_udc *fotg210 = gadget_to_fotg210(g);
 unsigned long flags;

 spin_lock_irqsave(&fotg210->lock, flags);

 fotg210_init(fotg210);
 fotg210->driver = ((void*)0);

 spin_unlock_irqrestore(&fotg210->lock, flags);

 return 0;
}
