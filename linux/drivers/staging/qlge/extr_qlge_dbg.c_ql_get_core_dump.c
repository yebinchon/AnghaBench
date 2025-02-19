
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;


 int drv ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int netif_running (int ) ;
 int ql_own_firmware (struct ql_adapter*) ;
 int ql_queue_fw_error (struct ql_adapter*) ;

__attribute__((used)) static void ql_get_core_dump(struct ql_adapter *qdev)
{
 if (!ql_own_firmware(qdev)) {
  netif_err(qdev, drv, qdev->ndev, "Don't own firmware!\n");
  return;
 }

 if (!netif_running(qdev->ndev)) {
  netif_err(qdev, ifup, qdev->ndev,
     "Force Coredump can only be done from interface that is up\n");
  return;
 }
 ql_queue_fw_error(qdev);
}
