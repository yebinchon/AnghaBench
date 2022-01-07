
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int sense_buffer; int sc_data_direction; } ;
struct myrb_hba {int sg_pool; int dcdb_pool; } ;
struct myrb_cmdblk {unsigned short status; scalar_t__ sgl_addr; TYPE_2__* sgl; TYPE_2__* dcdb; scalar_t__ dcdb_addr; } ;
struct TYPE_4__ {int sense; } ;
struct TYPE_3__ {int sdev_gendev; } ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_OK ;
 int DMA_FROM_DEVICE ;
 int KERN_ERR ;
 int MEDIUM_ERROR ;







 int NOT_READY ;
 int SAM_STAT_CHECK_CONDITION ;
 int dev_dbg (int *,char*) ;
 int dma_pool_free (int ,TYPE_2__*,scalar_t__) ;
 int memcpy (int ,int *,int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;
 int scsi_build_sense_buffer (int ,int ,int ,int,int) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void myrb_handle_scsi(struct myrb_hba *cb, struct myrb_cmdblk *cmd_blk,
  struct scsi_cmnd *scmd)
{
 unsigned short status;

 if (!cmd_blk)
  return;

 scsi_dma_unmap(scmd);

 if (cmd_blk->dcdb) {
  memcpy(scmd->sense_buffer, &cmd_blk->dcdb->sense, 64);
  dma_pool_free(cb->dcdb_pool, cmd_blk->dcdb,
         cmd_blk->dcdb_addr);
  cmd_blk->dcdb = ((void*)0);
 }
 if (cmd_blk->sgl) {
  dma_pool_free(cb->sg_pool, cmd_blk->sgl, cmd_blk->sgl_addr);
  cmd_blk->sgl = ((void*)0);
  cmd_blk->sgl_addr = 0;
 }
 status = cmd_blk->status;
 switch (status) {
 case 128:
 case 132:
  scmd->result = (DID_OK << 16) | status;
  break;
 case 133:
  dev_dbg(&scmd->device->sdev_gendev,
   "Bad Data Encountered\n");
  if (scmd->sc_data_direction == DMA_FROM_DEVICE)

   scsi_build_sense_buffer(0, scmd->sense_buffer,
      MEDIUM_ERROR, 0x11, 0);
  else

   scsi_build_sense_buffer(0, scmd->sense_buffer,
      MEDIUM_ERROR, 0x0C, 0);
  scmd->result = (DID_OK << 16) | SAM_STAT_CHECK_CONDITION;
  break;
 case 130:
  scmd_printk(KERN_ERR, scmd, "Irrecoverable Data Error\n");
  if (scmd->sc_data_direction == DMA_FROM_DEVICE)

   scsi_build_sense_buffer(0, scmd->sense_buffer,
      MEDIUM_ERROR, 0x11, 0x04);
  else

   scsi_build_sense_buffer(0, scmd->sense_buffer,
      MEDIUM_ERROR, 0x0C, 0x02);
  scmd->result = (DID_OK << 16) | SAM_STAT_CHECK_CONDITION;
  break;
 case 129:
  dev_dbg(&scmd->device->sdev_gendev,
       "Logical Drive Nonexistent or Offline");
  scmd->result = (DID_BAD_TARGET << 16);
  break;
 case 134:
  dev_dbg(&scmd->device->sdev_gendev,
       "Attempt to Access Beyond End of Logical Drive");

  scsi_build_sense_buffer(0, scmd->sense_buffer,
     NOT_READY, 0x21, 0);
  break;
 case 131:
  dev_dbg(&scmd->device->sdev_gendev, "Device nonresponsive\n");
  scmd->result = (DID_BAD_TARGET << 16);
  break;
 default:
  scmd_printk(KERN_ERR, scmd,
       "Unexpected Error Status %04X", status);
  scmd->result = (DID_ERROR << 16);
  break;
 }
 scmd->scsi_done(scmd);
}
