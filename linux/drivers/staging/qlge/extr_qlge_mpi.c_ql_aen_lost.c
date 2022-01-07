
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;
struct mbox_params {int out_count; int * mbox_out; } ;


 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 int ql_get_mb_sts (struct ql_adapter*,struct mbox_params*) ;

__attribute__((used)) static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int status;

 mbcp->out_count = 6;

 status = ql_get_mb_sts(qdev, mbcp);
 if (status)
  netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
 else {
  int i;
  netif_err(qdev, drv, qdev->ndev, "Lost AEN detected.\n");
  for (i = 0; i < mbcp->out_count; i++)
   netif_err(qdev, drv, qdev->ndev, "mbox_out[%d] = 0x%.08x.\n",
      i, mbcp->mbox_out[i]);

 }

 return status;
}
