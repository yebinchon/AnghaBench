
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int addr; int opcode; int id; } ;
union myrb_cmd_mbox {TYPE_1__ type3; } ;
struct scsi_device {int dummy; } ;
struct myrb_rbld_progress {unsigned int ldev_num; unsigned int ldev_size; unsigned int blocks_left; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {int need_cc_status; TYPE_2__* pdev; int host; struct myrb_cmdblk mcmd_blk; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int GFP_KERNEL ;
 int KERN_INFO ;
 int MYRB_CMD_REBUILD_STAT ;
 int MYRB_MCMD_TAG ;
 unsigned short MYRB_STATUS_SUCCESS ;
 struct myrb_rbld_progress* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct myrb_rbld_progress*,int ) ;
 unsigned short myrb_exec_cmd (struct myrb_hba*,struct myrb_cmdblk*) ;
 int myrb_logical_channel (int ) ;
 int myrb_reset_cmd (struct myrb_cmdblk*) ;
 struct scsi_device* scsi_device_lookup (int ,int ,unsigned int,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int) ;

__attribute__((used)) static void myrb_get_cc_progress(struct myrb_hba *cb)
{
 struct myrb_cmdblk *cmd_blk = &cb->mcmd_blk;
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 struct myrb_rbld_progress *rbld_buf;
 dma_addr_t rbld_addr;
 unsigned short status;

 rbld_buf = dma_alloc_coherent(&cb->pdev->dev,
          sizeof(struct myrb_rbld_progress),
          &rbld_addr, GFP_KERNEL);
 if (!rbld_buf) {
  cb->need_cc_status = 1;
  return;
 }
 myrb_reset_cmd(cmd_blk);
 mbox->type3.id = MYRB_MCMD_TAG;
 mbox->type3.opcode = MYRB_CMD_REBUILD_STAT;
 mbox->type3.addr = rbld_addr;
 status = myrb_exec_cmd(cb, cmd_blk);
 if (status == MYRB_STATUS_SUCCESS) {
  unsigned int ldev_num = rbld_buf->ldev_num;
  unsigned int ldev_size = rbld_buf->ldev_size;
  unsigned int blocks_done =
   ldev_size - rbld_buf->blocks_left;
  struct scsi_device *sdev;

  sdev = scsi_device_lookup(cb->host,
       myrb_logical_channel(cb->host),
       ldev_num, 0);
  if (sdev) {
   sdev_printk(KERN_INFO, sdev,
        "Consistency Check in Progress: %d%% completed\n",
        (100 * (blocks_done >> 7))
        / (ldev_size >> 7));
   scsi_device_put(sdev);
  }
 }
 dma_free_coherent(&cb->pdev->dev, sizeof(struct myrb_rbld_progress),
     rbld_buf, rbld_addr);
}
