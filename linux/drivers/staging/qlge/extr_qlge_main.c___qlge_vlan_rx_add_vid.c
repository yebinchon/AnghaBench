
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ql_adapter {int ndev; } ;


 int MAC_ADDR_E ;
 int MAC_ADDR_TYPE_VLAN ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_set_mac_addr_reg (struct ql_adapter*,int *,int ,int ) ;

__attribute__((used)) static int __qlge_vlan_rx_add_vid(struct ql_adapter *qdev, u16 vid)
{
 u32 enable_bit = MAC_ADDR_E;
 int err;

 err = ql_set_mac_addr_reg(qdev, (u8 *) &enable_bit,
      MAC_ADDR_TYPE_VLAN, vid);
 if (err)
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init vlan address.\n");
 return err;
}
