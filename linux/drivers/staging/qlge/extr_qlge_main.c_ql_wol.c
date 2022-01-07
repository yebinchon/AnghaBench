
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ql_adapter {int wol; TYPE_1__* ndev; } ;
struct TYPE_3__ {int name; } ;


 int EINVAL ;
 int MB_WOL_DISABLE ;
 int MB_WOL_MAGIC_PKT ;
 int MB_WOL_MODE_ON ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int drv ;
 int ifdown ;
 int netif_err (struct ql_adapter*,int ,TYPE_1__*,char*,...) ;
 int netif_info (struct ql_adapter*,int ,TYPE_1__*,char*,int ) ;
 int ql_mb_wol_mode (struct ql_adapter*,int ) ;
 int ql_mb_wol_set_magic (struct ql_adapter*,int) ;

__attribute__((used)) static int ql_wol(struct ql_adapter *qdev)
{
 int status = 0;
 u32 wol = MB_WOL_DISABLE;
 if (qdev->wol & (WAKE_ARP | WAKE_MAGICSECURE | WAKE_PHY | WAKE_UCAST |
   WAKE_MCAST | WAKE_BCAST)) {
  netif_err(qdev, ifdown, qdev->ndev,
     "Unsupported WOL parameter. qdev->wol = 0x%x.\n",
     qdev->wol);
  return -EINVAL;
 }

 if (qdev->wol & WAKE_MAGIC) {
  status = ql_mb_wol_set_magic(qdev, 1);
  if (status) {
   netif_err(qdev, ifdown, qdev->ndev,
      "Failed to set magic packet on %s.\n",
      qdev->ndev->name);
   return status;
  } else
   netif_info(qdev, drv, qdev->ndev,
       "Enabled magic packet successfully on %s.\n",
       qdev->ndev->name);

  wol |= MB_WOL_MAGIC_PKT;
 }

 if (qdev->wol) {
  wol |= MB_WOL_MODE_ON;
  status = ql_mb_wol_mode(qdev, wol);
  netif_err(qdev, drv, qdev->ndev,
     "WOL %s (wol code 0x%x) on %s\n",
     (status == 0) ? "Successfully set" : "Failed",
     wol, qdev->ndev->name);
 }

 return status;
}
