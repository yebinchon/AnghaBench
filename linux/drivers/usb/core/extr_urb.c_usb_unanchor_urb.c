
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_anchor {int lock; } ;
struct urb {struct usb_anchor* anchor; } ;


 int __usb_unanchor_urb (struct urb*,struct usb_anchor*) ;
 scalar_t__ likely (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void usb_unanchor_urb(struct urb *urb)
{
 unsigned long flags;
 struct usb_anchor *anchor;

 if (!urb)
  return;

 anchor = urb->anchor;
 if (!anchor)
  return;

 spin_lock_irqsave(&anchor->lock, flags);





 if (likely(anchor == urb->anchor))
  __usb_unanchor_urb(urb, anchor);
 spin_unlock_irqrestore(&anchor->lock, flags);
}
