
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mbox_out; } ;
struct ql_adapter {int ndev; TYPE_1__ idc_mbc; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int * mbox_in; } ;


 int EIO ;
 int MB_CMD_IDC_ACK ;
 scalar_t__ MB_CMD_STS_GOOD ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

__attribute__((used)) static int ql_mb_idc_ack(struct ql_adapter *qdev)
{
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;
 int status = 0;

 memset(mbcp, 0, sizeof(struct mbox_params));

 mbcp->in_count = 5;
 mbcp->out_count = 1;

 mbcp->mbox_in[0] = MB_CMD_IDC_ACK;
 mbcp->mbox_in[1] = qdev->idc_mbc.mbox_out[1];
 mbcp->mbox_in[2] = qdev->idc_mbc.mbox_out[2];
 mbcp->mbox_in[3] = qdev->idc_mbc.mbox_out[3];
 mbcp->mbox_in[4] = qdev->idc_mbc.mbox_out[4];

 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
  netif_err(qdev, drv, qdev->ndev, "Failed IDC ACK send.\n");
  status = -EIO;
 }
 return status;
}
