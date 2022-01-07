
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks_wlan_private {int is_device_open; } ;


 int del_timer_sync (int *) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int update_phyinfo_timer ;

int ks_wlan_net_stop(struct net_device *dev)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 priv->is_device_open = 0;
 del_timer_sync(&update_phyinfo_timer);

 if (netif_running(dev))
  netif_stop_queue(dev);

 return 0;
}
