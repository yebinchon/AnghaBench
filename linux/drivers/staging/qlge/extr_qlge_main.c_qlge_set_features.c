
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int qlge_update_hw_vlan_features (struct net_device*,int) ;
 int qlge_vlan_mode (struct net_device*,int) ;

__attribute__((used)) static int qlge_set_features(struct net_device *ndev,
 netdev_features_t features)
{
 netdev_features_t changed = ndev->features ^ features;
 int err;

 if (changed & NETIF_F_HW_VLAN_CTAG_RX) {

  err = qlge_update_hw_vlan_features(ndev, features);
  if (err)
   return err;

  qlge_vlan_mode(ndev, features);
 }

 return 0;
}
