
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_tx {int watchdog_enabled; int watchdog_work; } ;
struct zd_usb {struct zd_usb_tx tx; } ;


 int ZD_TX_WATCHDOG_INTERVAL ;
 int dev_dbg_f (int ,char*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_workqueue ;

void zd_tx_watchdog_enable(struct zd_usb *usb)
{
 struct zd_usb_tx *tx = &usb->tx;

 if (!tx->watchdog_enabled) {
  dev_dbg_f(zd_usb_dev(usb), "\n");
  queue_delayed_work(zd_workqueue, &tx->watchdog_work,
       ZD_TX_WATCHDOG_INTERVAL);
  tx->watchdog_enabled = 1;
 }
}
