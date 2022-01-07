
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int * wireless_handlers; int * netdev_ops; int dev_addr; } ;
struct ks_wlan_private {int mac_address_valid; int is_device_open; int eth_addr; scalar_t__ need_commit; } ;


 int TX_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int dummy_addr ;
 int ether_addr_copy (int ,int ) ;
 int ks_wlan_handler_def ;
 int ks_wlan_netdev_ops ;
 int ks_wlan_update_phyinfo_timeout ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;
 int update_phyinfo ;
 int update_phyinfo_timer ;

int ks_wlan_net_start(struct net_device *dev)
{
 struct ks_wlan_private *priv;


 priv = netdev_priv(dev);
 priv->mac_address_valid = 0;
 priv->is_device_open = 1;
 priv->need_commit = 0;

 atomic_set(&update_phyinfo, 0);
 timer_setup(&update_phyinfo_timer, ks_wlan_update_phyinfo_timeout, 0);


 ether_addr_copy(priv->eth_addr, dummy_addr);
 ether_addr_copy(dev->dev_addr, priv->eth_addr);


 dev->netdev_ops = &ks_wlan_netdev_ops;
 dev->wireless_handlers = &ks_wlan_handler_def;
 dev->watchdog_timeo = TX_TIMEOUT;

 netif_carrier_off(dev);

 return 0;
}
