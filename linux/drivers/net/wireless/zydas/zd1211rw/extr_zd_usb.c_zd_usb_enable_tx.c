
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {int lock; scalar_t__ stopped; scalar_t__ submitted_urbs; int enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 int atomic_set (int *,int) ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zd_usb_to_hw (struct zd_usb*) ;

void zd_usb_enable_tx(struct zd_usb *usb)
{
 unsigned long flags;
 struct zd_usb_tx *tx = &usb->tx;

 spin_lock_irqsave(&tx->lock, flags);
 atomic_set(&tx->enabled, 1);
 tx->submitted_urbs = 0;
 ieee80211_wake_queues(zd_usb_to_hw(usb));
 tx->stopped = 0;
 spin_unlock_irqrestore(&tx->lock, flags);
}
