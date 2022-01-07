
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct TYPE_7__ {int ch_id; } ;
struct TYPE_6__ {int ch_id; } ;
struct net_dev_context {TYPE_2__ tx; TYPE_3__* iface; TYPE_1__ rx; } ;
struct TYPE_8__ {int (* request_netinfo ) (TYPE_3__*,int ,int ) ;} ;


 int EBUSY ;
 int comp ;
 scalar_t__ is_valid_ether_addr (int ) ;
 scalar_t__ most_start_channel (TYPE_3__*,int ,int *) ;
 int most_stop_channel (TYPE_3__*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct net_dev_context* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_dormant_off (struct net_device*) ;
 int netif_dormant_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int on_netinfo ;
 int probe_disc_mt ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int most_nd_open(struct net_device *dev)
{
 struct net_dev_context *nd = netdev_priv(dev);
 int ret = 0;

 mutex_lock(&probe_disc_mt);

 if (most_start_channel(nd->iface, nd->rx.ch_id, &comp)) {
  netdev_err(dev, "most_start_channel() failed\n");
  ret = -EBUSY;
  goto unlock;
 }

 if (most_start_channel(nd->iface, nd->tx.ch_id, &comp)) {
  netdev_err(dev, "most_start_channel() failed\n");
  most_stop_channel(nd->iface, nd->rx.ch_id, &comp);
  ret = -EBUSY;
  goto unlock;
 }

 netif_carrier_off(dev);
 if (is_valid_ether_addr(dev->dev_addr))
  netif_dormant_off(dev);
 else
  netif_dormant_on(dev);
 netif_wake_queue(dev);
 if (nd->iface->request_netinfo)
  nd->iface->request_netinfo(nd->iface, nd->tx.ch_id, on_netinfo);

unlock:
 mutex_unlock(&probe_disc_mt);
 return ret;
}
