
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_params {int out_count; } ;
struct ql_adapter {int ide_completion; int ndev; struct mbox_params idc_mbc; } ;


 int complete (int *) ;
 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_get_mb_sts (struct ql_adapter*,struct mbox_params*) ;
 int ql_queue_fw_error (struct ql_adapter*) ;

__attribute__((used)) static int ql_idc_cmplt_aen(struct ql_adapter *qdev)
{
 int status;
 struct mbox_params *mbcp = &qdev->idc_mbc;
 mbcp->out_count = 4;
 status = ql_get_mb_sts(qdev, mbcp);
 if (status) {
  netif_err(qdev, drv, qdev->ndev,
     "Could not read MPI, resetting RISC!\n");
  ql_queue_fw_error(qdev);
 } else



  complete(&qdev->ide_completion);

 return status;
}
