
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NIC_RCV_CFG ;
 int NIC_RCV_CFG_VLAN_MASK ;
 int NIC_RCV_CFG_VLAN_MATCH_AND_NON ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static void qlge_vlan_mode(struct net_device *ndev, netdev_features_t features)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 if (features & NETIF_F_HW_VLAN_CTAG_RX) {
  ql_write32(qdev, NIC_RCV_CFG, NIC_RCV_CFG_VLAN_MASK |
     NIC_RCV_CFG_VLAN_MATCH_AND_NON);
 } else {
  ql_write32(qdev, NIC_RCV_CFG, NIC_RCV_CFG_VLAN_MASK);
 }
}
