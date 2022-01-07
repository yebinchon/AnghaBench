
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int status; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int VIF_STATUS_CONNECTED ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int xenvif_down (struct xenvif*) ;

void xenvif_carrier_off(struct xenvif *vif)
{
 struct net_device *dev = vif->dev;

 rtnl_lock();
 if (test_and_clear_bit(VIF_STATUS_CONNECTED, &vif->status)) {
  netif_carrier_off(dev);
  if (netif_running(dev))
   xenvif_down(vif);
 }
 rtnl_unlock();
}
