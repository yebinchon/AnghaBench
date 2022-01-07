
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_interrupt {int lock; struct urb* urb; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct urb {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int usb_int_enabled(struct zd_usb *usb)
{
 unsigned long flags;
 struct zd_usb_interrupt *intr = &usb->intr;
 struct urb *urb;

 spin_lock_irqsave(&intr->lock, flags);
 urb = intr->urb;
 spin_unlock_irqrestore(&intr->lock, flags);
 return urb != ((void*)0);
}
