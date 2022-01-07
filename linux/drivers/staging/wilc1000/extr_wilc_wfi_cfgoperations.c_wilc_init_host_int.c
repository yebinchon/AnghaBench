
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc_priv {int p2p_listen_state; int hif_drv; int scan_req_lock; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct net_device {int dummy; } ;


 int mutex_init (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int wilc_init (struct net_device*,int *) ;

int wilc_init_host_int(struct net_device *net)
{
 int ret;
 struct wilc_vif *vif = netdev_priv(net);
 struct wilc_priv *priv = &vif->priv;

 priv->p2p_listen_state = 0;

 mutex_init(&priv->scan_req_lock);
 ret = wilc_init(net, &priv->hif_drv);
 if (ret)
  netdev_err(net, "Error while initializing hostinterface\n");

 return ret;
}
