
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int rx_ring_count; int rss_ring_count; int tx_ring_count; TYPE_3__* rx_ring; TYPE_4__* ndev; TYPE_2__* nic_ops; int * tx_ring; int wol; TYPE_1__* pdev; } ;
struct TYPE_8__ {int features; } ;
struct TYPE_7__ {int napi; } ;
struct TYPE_6__ {int (* port_initialize ) (struct ql_adapter*) ;} ;
struct TYPE_5__ {int subsystem_device; } ;


 int FSC ;
 int FSC_DBL_MASK ;
 int FSC_DBRST_MASK ;
 int FSC_EC ;
 int FSC_EPC_INBOUND ;
 int FSC_EPC_OUTBOUND ;
 int FSC_FE ;
 int FSC_VM_PAGESIZE_MASK ;
 int FSC_VM_PAGE_4K ;
 int INTR_MASK ;
 int INTR_MASK_PI ;
 int MGMT_RCV_CFG ;
 int MGMT_RCV_CFG_RM ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NIC_RCV_CFG ;
 int NIC_RCV_CFG_DFQ ;
 int NIC_RCV_CFG_DFQ_MASK ;
 int NIC_RCV_CFG_RV ;
 int RST_FO ;
 int RST_FO_RR_MASK ;
 int RST_FO_RR_RCV_FUNC_CQ ;
 int SPLT_HDR ;
 int SPLT_LEN ;
 int SPLT_SETTING ;
 int SYS ;
 int SYS_EFE ;
 int SYS_FAE ;
 int WAKE_MAGIC ;
 int ifup ;
 int napi_enable (int *) ;
 int netif_err (struct ql_adapter*,int ,TYPE_4__*,char*,...) ;
 int ql_cam_route_initialize (struct ql_adapter*) ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_start_rss (struct ql_adapter*) ;
 int ql_start_rx_ring (struct ql_adapter*,TYPE_3__*) ;
 int ql_start_tx_ring (struct ql_adapter*,int *) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 int stub1 (struct ql_adapter*) ;

__attribute__((used)) static int ql_adapter_initialize(struct ql_adapter *qdev)
{
 u32 value, mask;
 int i;
 int status = 0;




 value = SYS_EFE | SYS_FAE;
 mask = value << 16;
 ql_write32(qdev, SYS, mask | value);


 value = NIC_RCV_CFG_DFQ;
 mask = NIC_RCV_CFG_DFQ_MASK;
 if (qdev->ndev->features & NETIF_F_HW_VLAN_CTAG_RX) {
  value |= NIC_RCV_CFG_RV;
  mask |= (NIC_RCV_CFG_RV << 16);
 }
 ql_write32(qdev, NIC_RCV_CFG, (mask | value));


 ql_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16) | INTR_MASK_PI);


 value = FSC_FE | FSC_EPC_INBOUND | FSC_EPC_OUTBOUND |
     FSC_EC | FSC_VM_PAGE_4K;
 value |= SPLT_SETTING;


 mask = FSC_VM_PAGESIZE_MASK |
     FSC_DBL_MASK | FSC_DBRST_MASK | (value << 16);
 ql_write32(qdev, FSC, mask | value);

 ql_write32(qdev, SPLT_HDR, SPLT_LEN);






 ql_write32(qdev, RST_FO, RST_FO_RR_MASK | RST_FO_RR_RCV_FUNC_CQ);




 value = ql_read32(qdev, MGMT_RCV_CFG);
 value &= ~MGMT_RCV_CFG_RM;
 mask = 0xffff0000;


 ql_write32(qdev, MGMT_RCV_CFG, mask);
 ql_write32(qdev, MGMT_RCV_CFG, mask | value);


 if (qdev->pdev->subsystem_device == 0x0068 ||
   qdev->pdev->subsystem_device == 0x0180)
  qdev->wol = WAKE_MAGIC;


 for (i = 0; i < qdev->rx_ring_count; i++) {
  status = ql_start_rx_ring(qdev, &qdev->rx_ring[i]);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev,
      "Failed to start rx ring[%d].\n", i);
   return status;
  }
 }




 if (qdev->rss_ring_count > 1) {
  status = ql_start_rss(qdev);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev, "Failed to start RSS.\n");
   return status;
  }
 }


 for (i = 0; i < qdev->tx_ring_count; i++) {
  status = ql_start_tx_ring(qdev, &qdev->tx_ring[i]);
  if (status) {
   netif_err(qdev, ifup, qdev->ndev,
      "Failed to start tx ring[%d].\n", i);
   return status;
  }
 }


 status = qdev->nic_ops->port_initialize(qdev);
 if (status)
  netif_err(qdev, ifup, qdev->ndev, "Failed to start port.\n");


 status = ql_cam_route_initialize(qdev);
 if (status) {
  netif_err(qdev, ifup, qdev->ndev,
     "Failed to init CAM/Routing tables.\n");
  return status;
 }


 for (i = 0; i < qdev->rss_ring_count; i++)
  napi_enable(&qdev->rx_ring[i].napi);

 return status;
}
