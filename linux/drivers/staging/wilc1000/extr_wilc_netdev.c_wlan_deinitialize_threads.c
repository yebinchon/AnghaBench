
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int close; int * txq_thread; int txq_event; } ;
struct net_device {int dummy; } ;


 int complete (int *) ;
 int kthread_stop (int *) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static void wlan_deinitialize_threads(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wl = vif->wilc;

 wl->close = 1;

 complete(&wl->txq_event);

 if (wl->txq_thread) {
  kthread_stop(wl->txq_thread);
  wl->txq_thread = ((void*)0);
 }
}
