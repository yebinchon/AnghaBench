
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u32 ;
struct ql_adapter {TYPE_1__* ndev; } ;
struct mbox_params {int in_count; int out_count; int* mbox_in; scalar_t__* mbox_out; } ;
struct TYPE_2__ {scalar_t__* dev_addr; } ;


 int EIO ;
 int MB_CMD_SET_WOL_MAGIC ;
 scalar_t__ MB_CMD_STS_GOOD ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,TYPE_1__*,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

int ql_mb_wol_set_magic(struct ql_adapter *qdev, u32 enable_wol)
{
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;
 int status;
 u8 *addr = qdev->ndev->dev_addr;

 memset(mbcp, 0, sizeof(struct mbox_params));

 mbcp->in_count = 8;
 mbcp->out_count = 1;

 mbcp->mbox_in[0] = MB_CMD_SET_WOL_MAGIC;
 if (enable_wol) {
  mbcp->mbox_in[1] = (u32)addr[0];
  mbcp->mbox_in[2] = (u32)addr[1];
  mbcp->mbox_in[3] = (u32)addr[2];
  mbcp->mbox_in[4] = (u32)addr[3];
  mbcp->mbox_in[5] = (u32)addr[4];
  mbcp->mbox_in[6] = (u32)addr[5];
  mbcp->mbox_in[7] = 0;
 } else {
  mbcp->mbox_in[1] = 0;
  mbcp->mbox_in[2] = 1;
  mbcp->mbox_in[3] = 1;
  mbcp->mbox_in[4] = 1;
  mbcp->mbox_in[5] = 1;
  mbcp->mbox_in[6] = 1;
  mbcp->mbox_in[7] = 0;
 }

 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
  netif_err(qdev, drv, qdev->ndev, "Failed to set WOL mode.\n");
  status = -EIO;
 }
 return status;
}
