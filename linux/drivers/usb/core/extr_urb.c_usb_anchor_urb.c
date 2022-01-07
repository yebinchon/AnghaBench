
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int lock; int poisoned; int urb_list; } ;
struct urb {int reject; struct usb_anchor* anchor; int anchor_list; } ;


 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int usb_get_urb (struct urb*) ;

void usb_anchor_urb(struct urb *urb, struct usb_anchor *anchor)
{
 unsigned long flags;

 spin_lock_irqsave(&anchor->lock, flags);
 usb_get_urb(urb);
 list_add_tail(&urb->anchor_list, &anchor->urb_list);
 urb->anchor = anchor;

 if (unlikely(anchor->poisoned))
  atomic_inc(&urb->reject);

 spin_unlock_irqrestore(&anchor->lock, flags);
}
