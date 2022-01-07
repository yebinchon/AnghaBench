
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {scalar_t__ event; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int usbip_event_happened(struct usbip_device *ud)
{
 int happened = 0;
 unsigned long flags;

 spin_lock_irqsave(&ud->lock, flags);
 if (ud->event != 0)
  happened = 1;
 spin_unlock_irqrestore(&ud->lock, flags);

 return happened;
}
