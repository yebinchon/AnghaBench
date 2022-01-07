
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; int max_frame_size; int link_config; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int * mbox_in; } ;


 int EIO ;
 int MB_CMD_SET_PORT_CFG ;
 scalar_t__ MB_CMD_STS_GOOD ;
 scalar_t__ MB_CMD_STS_INTRMDT ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

int ql_mb_set_port_cfg(struct ql_adapter *qdev)
{
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;
 int status = 0;

 memset(mbcp, 0, sizeof(struct mbox_params));

 mbcp->in_count = 3;
 mbcp->out_count = 1;

 mbcp->mbox_in[0] = MB_CMD_SET_PORT_CFG;
 mbcp->mbox_in[1] = qdev->link_config;
 mbcp->mbox_in[2] = qdev->max_frame_size;


 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] == MB_CMD_STS_INTRMDT) {
  netif_err(qdev, drv, qdev->ndev,
     "Port Config sent, wait for IDC.\n");
 } else if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
  netif_err(qdev, drv, qdev->ndev,
     "Failed Set Port Configuration.\n");
  status = -EIO;
 }
 return status;
}
