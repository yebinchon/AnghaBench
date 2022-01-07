
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_params {int out_count; } ;
struct ql_adapter {int mpi_idc_work; int workqueue; int ndev; struct mbox_params idc_mbc; } ;


 int INTR_MASK ;
 int INTR_MASK_PI ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_get_mb_sts (struct ql_adapter*,struct mbox_params*) ;
 int ql_queue_asic_error (struct ql_adapter*) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static int ql_idc_req_aen(struct ql_adapter *qdev)
{
 int status;
 struct mbox_params *mbcp = &qdev->idc_mbc;

 netif_err(qdev, drv, qdev->ndev, "Enter!\n");



 mbcp->out_count = 4;
 status = ql_get_mb_sts(qdev, mbcp);
 if (status) {
  netif_err(qdev, drv, qdev->ndev,
     "Could not read MPI, resetting ASIC!\n");
  ql_queue_asic_error(qdev);
 } else {




  ql_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16));
  queue_delayed_work(qdev->workqueue, &qdev->mpi_idc_work, 0);
 }
 return status;
}
