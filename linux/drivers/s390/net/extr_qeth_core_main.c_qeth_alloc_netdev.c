
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct qeth_card {TYPE_2__* gdev; TYPE_1__ info; } ;
struct net_device {int min_mtu; int features; int vlan_features; int hw_features; int priv_flags; int * ethtool_ops; scalar_t__ mtu; scalar_t__ max_mtu; int watchdog_timeo; struct qeth_card* ml_priv; } ;
struct TYPE_4__ {int dev; } ;


 int IFF_TX_SKB_SHARING ;
 scalar_t__ IS_IQD (struct qeth_card*) ;
 scalar_t__ IS_OSN (struct qeth_card*) ;
 int NETIF_F_SG ;
 int NET_NAME_UNKNOWN ;



 int QETH_IQD_MIN_TXQ ;
 int QETH_MAX_QUEUES ;
 int QETH_TX_TIMEOUT ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int ) ;
 struct net_device* alloc_etherdev_mqs (int ,int ,int) ;
 struct net_device* alloc_netdev (int ,char*,int ,int ) ;
 struct net_device* alloc_netdev_mqs (int ,char*,int ,int ,int ,int) ;
 int ether_setup ;
 int free_netdev (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int qeth_ethtool_ops ;
 int qeth_osn_ethtool_ops ;

__attribute__((used)) static struct net_device *qeth_alloc_netdev(struct qeth_card *card)
{
 struct net_device *dev;

 switch (card->info.type) {
 case 130:
  dev = alloc_netdev_mqs(0, "hsi%d", NET_NAME_UNKNOWN,
           ether_setup, QETH_MAX_QUEUES, 1);
  break;
 case 129:
  dev = alloc_etherdev(0);
  break;
 case 128:
  dev = alloc_netdev(0, "osn%d", NET_NAME_UNKNOWN, ether_setup);
  break;
 default:
  dev = alloc_etherdev_mqs(0, QETH_MAX_QUEUES, 1);
 }

 if (!dev)
  return ((void*)0);

 dev->ml_priv = card;
 dev->watchdog_timeo = QETH_TX_TIMEOUT;
 dev->min_mtu = IS_OSN(card) ? 64 : 576;

 dev->max_mtu = 0;
 dev->mtu = 0;
 SET_NETDEV_DEV(dev, &card->gdev->dev);
 netif_carrier_off(dev);

 if (IS_OSN(card)) {
  dev->ethtool_ops = &qeth_osn_ethtool_ops;
 } else {
  dev->ethtool_ops = &qeth_ethtool_ops;
  dev->priv_flags &= ~IFF_TX_SKB_SHARING;
  dev->hw_features |= NETIF_F_SG;
  dev->vlan_features |= NETIF_F_SG;
  if (IS_IQD(card)) {
   dev->features |= NETIF_F_SG;
   if (netif_set_real_num_tx_queues(dev,
        QETH_IQD_MIN_TXQ)) {
    free_netdev(dev);
    return ((void*)0);
   }
  }
 }

 return dev;
}
