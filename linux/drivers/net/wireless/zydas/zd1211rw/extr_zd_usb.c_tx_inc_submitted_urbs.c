
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {scalar_t__ submitted_urbs; int stopped; int lock; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 scalar_t__ ZD_USB_TX_HIGH ;
 int ieee80211_stop_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int zd_usb_to_hw (struct zd_usb*) ;

__attribute__((used)) static void tx_inc_submitted_urbs(struct zd_usb *usb)
{
 struct zd_usb_tx *tx = &usb->tx;
 unsigned long flags;

 spin_lock_irqsave(&tx->lock, flags);
 ++tx->submitted_urbs;
 if (!tx->stopped && tx->submitted_urbs > ZD_USB_TX_HIGH) {
  ieee80211_stop_queues(zd_usb_to_hw(usb));
  tx->stopped = 1;
 }
 spin_unlock_irqrestore(&tx->lock, flags);
}
