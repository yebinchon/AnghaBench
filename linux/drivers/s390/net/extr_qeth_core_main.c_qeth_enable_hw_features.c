
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct net_device {int features; int wanted_features; int hw_features; struct qeth_card* ml_priv; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int dev_warn (int *,char*) ;
 int netdev_update_features (struct net_device*) ;

void qeth_enable_hw_features(struct net_device *dev)
{
 struct qeth_card *card = dev->ml_priv;
 netdev_features_t features;

 features = dev->features;



 dev->features &= ~dev->hw_features;

 if (IS_LAYER2(card) && IS_VM_NIC(card)) {
  dev->features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
  dev->wanted_features |= NETIF_F_HW_VLAN_CTAG_FILTER;
 }
 netdev_update_features(dev);
 if (features != dev->features)
  dev_warn(&card->gdev->dev,
    "Device recovery failed to restore all offload features\n");
}
