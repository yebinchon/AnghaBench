
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct ks_wlan_private {int mac_address_valid; scalar_t__ cur_rx; } ;


 int EBUSY ;
 int netdev_err (struct net_device*,char*,int ) ;
 struct ks_wlan_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static
int ks_wlan_open(struct net_device *dev)
{
 struct ks_wlan_private *priv = netdev_priv(dev);

 priv->cur_rx = 0;

 if (!priv->mac_address_valid) {
  netdev_err(dev, "ks_wlan : %s Not READY !!\n", dev->name);
  return -EBUSY;
 }
 netif_start_queue(dev);

 return 0;
}
