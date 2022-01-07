
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct rx_ring {int dummy; } ;
struct ql_adapter {TYPE_1__* ndev; } ;
struct ib_mac_iocb_rsp {int flags2; int flags4; int flags3; int flags1; int vlan_id; int data_len; } ;
struct TYPE_2__ {int features; } ;


 int IB_MAC_CSUM_ERR_MASK ;
 int IB_MAC_IOCB_RSP_DL ;
 int IB_MAC_IOCB_RSP_DS ;
 int IB_MAC_IOCB_RSP_HV ;
 int IB_MAC_IOCB_RSP_T ;
 int IB_MAC_IOCB_RSP_V ;
 int IB_MAC_IOCB_RSP_VLAN_MASK ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int QL_DUMP_IB_MAC_RSP (struct ib_mac_iocb_rsp*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int ql_process_mac_rx_gro_page (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*,scalar_t__,int) ;
 int ql_process_mac_rx_page (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*,scalar_t__,int) ;
 int ql_process_mac_rx_skb (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*,scalar_t__,int) ;
 int ql_process_mac_split_rx_intr (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*,int) ;

__attribute__((used)) static unsigned long ql_process_mac_rx_intr(struct ql_adapter *qdev,
     struct rx_ring *rx_ring,
     struct ib_mac_iocb_rsp *ib_mac_rsp)
{
 u32 length = le32_to_cpu(ib_mac_rsp->data_len);
 u16 vlan_id = ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) &&
   (qdev->ndev->features & NETIF_F_HW_VLAN_CTAG_RX)) ?
   ((le16_to_cpu(ib_mac_rsp->vlan_id) &
   IB_MAC_IOCB_RSP_VLAN_MASK)) : 0xffff;

 QL_DUMP_IB_MAC_RSP(ib_mac_rsp);

 if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HV) {



  ql_process_mac_split_rx_intr(qdev, rx_ring, ib_mac_rsp,
      vlan_id);
 } else if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DS) {




  ql_process_mac_rx_skb(qdev, rx_ring, ib_mac_rsp,
      length, vlan_id);
 } else if ((ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DL) &&
  !(ib_mac_rsp->flags1 & IB_MAC_CSUM_ERR_MASK) &&
  (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_T)) {



  ql_process_mac_rx_gro_page(qdev, rx_ring, ib_mac_rsp,
      length, vlan_id);
 } else if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DL) {



  ql_process_mac_rx_page(qdev, rx_ring, ib_mac_rsp,
      length, vlan_id);
 } else {



  ql_process_mac_split_rx_intr(qdev, rx_ring, ib_mac_rsp,
      vlan_id);
 }

 return (unsigned long)length;
}
