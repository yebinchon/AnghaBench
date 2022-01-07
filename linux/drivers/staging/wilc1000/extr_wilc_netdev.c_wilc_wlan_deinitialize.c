
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int initialized; int txq_event; int hif_cs; TYPE_1__* hif_func; int dev_irq_num; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* disable_interrupt ) (struct wilc*) ;} ;


 int complete (int *) ;
 int deinit_irq (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int stub1 (struct wilc*) ;
 int wilc_wlan_cleanup (struct net_device*) ;
 int wilc_wlan_stop (struct wilc*,struct wilc_vif*) ;
 int wlan_deinit_locks (struct net_device*) ;
 int wlan_deinitialize_threads (struct net_device*) ;

__attribute__((used)) static void wilc_wlan_deinitialize(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wl = vif->wilc;

 if (!wl) {
  netdev_err(dev, "wl is NULL\n");
  return;
 }

 if (wl->initialized) {
  netdev_info(dev, "Deinitializing wilc1000...\n");

  if (!wl->dev_irq_num &&
      wl->hif_func->disable_interrupt) {
   mutex_lock(&wl->hif_cs);
   wl->hif_func->disable_interrupt(wl);
   mutex_unlock(&wl->hif_cs);
  }
  complete(&wl->txq_event);

  wlan_deinitialize_threads(dev);
  deinit_irq(dev);

  wilc_wlan_stop(wl, vif);
  wilc_wlan_cleanup(dev);
  wlan_deinit_locks(dev);

  wl->initialized = 0;

  netdev_dbg(dev, "wilc1000 deinitialization Done\n");
 } else {
  netdev_dbg(dev, "wilc1000 is not initialized\n");
 }
}
