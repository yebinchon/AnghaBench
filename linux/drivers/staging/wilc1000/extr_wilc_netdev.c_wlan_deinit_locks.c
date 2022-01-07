
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_vif {struct wilc* wilc; } ;
struct wilc {int vif_mutex; int txq_add_to_head_cs; int cfg_cmd_lock; int rxq_cs; int hif_cs; } ;
struct net_device {int dummy; } ;


 int mutex_destroy (int *) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;

__attribute__((used)) static void wlan_deinit_locks(struct net_device *dev)
{
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 mutex_destroy(&wilc->hif_cs);
 mutex_destroy(&wilc->rxq_cs);
 mutex_destroy(&wilc->cfg_cmd_lock);
 mutex_destroy(&wilc->txq_add_to_head_cs);
 mutex_destroy(&wilc->vif_mutex);
}
