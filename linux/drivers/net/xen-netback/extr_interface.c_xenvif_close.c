
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int status; } ;
struct net_device {int dummy; } ;


 int VIF_STATUS_CONNECTED ;
 struct xenvif* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xenvif_down (struct xenvif*) ;

__attribute__((used)) static int xenvif_close(struct net_device *dev)
{
 struct xenvif *vif = netdev_priv(dev);
 if (test_bit(VIF_STATUS_CONNECTED, &vif->status))
  xenvif_down(vif);
 netif_tx_stop_all_queues(dev);
 return 0;
}
