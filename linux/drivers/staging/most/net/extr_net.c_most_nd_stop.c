
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {int ch_id; } ;
struct TYPE_5__ {int ch_id; } ;
struct net_dev_context {TYPE_2__ tx; TYPE_3__* iface; TYPE_1__ rx; } ;
struct TYPE_7__ {int (* request_netinfo ) (TYPE_3__*,int ,int *) ;} ;


 int comp ;
 int most_stop_channel (TYPE_3__*,int ,int *) ;
 struct net_dev_context* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (TYPE_3__*,int ,int *) ;

__attribute__((used)) static int most_nd_stop(struct net_device *dev)
{
 struct net_dev_context *nd = netdev_priv(dev);

 netif_stop_queue(dev);
 if (nd->iface->request_netinfo)
  nd->iface->request_netinfo(nd->iface, nd->tx.ch_id, ((void*)0));
 most_stop_channel(nd->iface, nd->rx.ch_id, &comp);
 most_stop_channel(nd->iface, nd->tx.ch_id, &comp);

 return 0;
}
