
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilc_priv {int p2p_listen_state; int scan_req_lock; } ;
struct wilc_vif {TYPE_1__* wilc; struct wilc_priv priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hif_workqueue; } ;


 int flush_workqueue (int ) ;
 int mutex_destroy (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_deinit (struct wilc_vif*) ;

void wilc_deinit_host_int(struct net_device *net)
{
 int ret;
 struct wilc_vif *vif = netdev_priv(net);
 struct wilc_priv *priv = &vif->priv;

 priv->p2p_listen_state = 0;

 flush_workqueue(vif->wilc->hif_workqueue);
 mutex_destroy(&priv->scan_req_lock);
 ret = wilc_deinit(vif);

 if (ret)
  netdev_err(net, "Error while deinitializing host interface\n");
}
