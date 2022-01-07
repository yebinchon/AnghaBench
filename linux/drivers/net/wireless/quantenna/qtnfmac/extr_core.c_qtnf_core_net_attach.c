
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct qtnf_wmac {TYPE_1__* bus; } ;
struct TYPE_4__ {void* iftype; } ;
struct qtnf_vif {TYPE_2__ wdev; int mac_addr; struct net_device* netdev; } ;
struct net_device {int needs_free_netdev; int flags; int tx_queue_len; int * ethtool_ops; int watchdog_timeo; int dev_addr; TYPE_2__* ieee80211_ptr; int * netdev_ops; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 void* NL80211_IFTYPE_UNSPECIFIED ;
 int QTNF_DEF_WDOG_TIMEOUT ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_netdev_mqs (int,char const*,unsigned char,int ,int,int) ;
 int dev_net_set (struct net_device*,int ) ;
 int ether_addr_copy (int ,int ) ;
 int ether_setup ;
 int free_netdev (struct net_device*) ;
 void* netdev_priv (struct net_device*) ;
 struct wiphy* priv_to_wiphy (struct qtnf_wmac*) ;
 int qtnf_ethtool_ops ;
 int qtnf_netdev_ops ;
 int register_netdevice (struct net_device*) ;
 int wiphy_dev (struct wiphy*) ;
 int wiphy_net (struct wiphy*) ;

int qtnf_core_net_attach(struct qtnf_wmac *mac, struct qtnf_vif *vif,
    const char *name, unsigned char name_assign_type)
{
 struct wiphy *wiphy = priv_to_wiphy(mac);
 struct net_device *dev;
 void *qdev_vif;
 int ret;

 dev = alloc_netdev_mqs(sizeof(struct qtnf_vif *), name,
          name_assign_type, ether_setup, 1, 1);
 if (!dev) {
  vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
  return -ENOMEM;
 }

 vif->netdev = dev;

 dev->netdev_ops = &qtnf_netdev_ops;
 dev->needs_free_netdev = 1;
 dev_net_set(dev, wiphy_net(wiphy));
 dev->ieee80211_ptr = &vif->wdev;
 ether_addr_copy(dev->dev_addr, vif->mac_addr);
 SET_NETDEV_DEV(dev, wiphy_dev(wiphy));
 dev->flags |= IFF_BROADCAST | IFF_MULTICAST;
 dev->watchdog_timeo = QTNF_DEF_WDOG_TIMEOUT;
 dev->tx_queue_len = 100;
 dev->ethtool_ops = &qtnf_ethtool_ops;

 qdev_vif = netdev_priv(dev);
 *((void **)qdev_vif) = vif;

 SET_NETDEV_DEV(dev, mac->bus->dev);

 ret = register_netdevice(dev);
 if (ret) {
  free_netdev(dev);
  vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
 }

 return ret;
}
