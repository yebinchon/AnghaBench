
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dev_state {int lock; int async_pending; } ;
struct async {int asynclist; struct usb_dev_state* ps; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void async_newpending(struct async *as)
{
 struct usb_dev_state *ps = as->ps;
 unsigned long flags;

 spin_lock_irqsave(&ps->lock, flags);
 list_add_tail(&as->asynclist, &ps->async_pending);
 spin_unlock_irqrestore(&ps->lock, flags);
}
