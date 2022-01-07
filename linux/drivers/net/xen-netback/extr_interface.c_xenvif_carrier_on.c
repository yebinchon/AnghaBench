
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct xenvif {TYPE_1__* dev; int status; int can_sg; } ;
struct TYPE_4__ {scalar_t__ mtu; } ;


 scalar_t__ ETH_DATA_LEN ;
 int VIF_STATUS_CONNECTED ;
 int dev_set_mtu (TYPE_1__*,scalar_t__) ;
 int netdev_update_features (TYPE_1__*) ;
 scalar_t__ netif_running (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int set_bit (int ,int *) ;
 int xenvif_up (struct xenvif*) ;

void xenvif_carrier_on(struct xenvif *vif)
{
 rtnl_lock();
 if (!vif->can_sg && vif->dev->mtu > ETH_DATA_LEN)
  dev_set_mtu(vif->dev, ETH_DATA_LEN);
 netdev_update_features(vif->dev);
 set_bit(VIF_STATUS_CONNECTED, &vif->status);
 if (netif_running(vif->dev))
  xenvif_up(vif);
 rtnl_unlock();
}
