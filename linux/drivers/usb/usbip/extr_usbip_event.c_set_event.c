
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_device {unsigned long event; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void set_event(struct usbip_device *ud, unsigned long event)
{
 unsigned long flags;

 spin_lock_irqsave(&ud->lock, flags);
 ud->event |= event;
 spin_unlock_irqrestore(&ud->lock, flags);
}
