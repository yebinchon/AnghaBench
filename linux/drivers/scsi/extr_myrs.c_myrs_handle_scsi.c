
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int sense_buffer; } ;
struct myrs_hba {int sg_pool; int dcdb_pool; int sense_pool; } ;
struct myrs_cmdblk {unsigned char status; unsigned int sense_len; int residual; scalar_t__ sgl_addr; int * sgl; scalar_t__ dcdb_dma; int * dcdb; scalar_t__ sense_addr; int * sense; } ;


 int DID_BAD_TARGET ;
 int DID_OK ;
 unsigned char MYRS_STATUS_DEVICE_NON_RESPONSIVE ;
 unsigned char MYRS_STATUS_DEVICE_NON_RESPONSIVE2 ;
 unsigned char MYRS_STATUS_FAILED ;
 unsigned int SCSI_SENSE_BUFFERSIZE ;
 int dma_pool_free (int ,int *,scalar_t__) ;
 int memcpy (int ,int *,unsigned int) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void myrs_handle_scsi(struct myrs_hba *cs, struct myrs_cmdblk *cmd_blk,
  struct scsi_cmnd *scmd)
{
 unsigned char status;

 if (!cmd_blk)
  return;

 scsi_dma_unmap(scmd);
 status = cmd_blk->status;
 if (cmd_blk->sense) {
  if (status == MYRS_STATUS_FAILED && cmd_blk->sense_len) {
   unsigned int sense_len = SCSI_SENSE_BUFFERSIZE;

   if (sense_len > cmd_blk->sense_len)
    sense_len = cmd_blk->sense_len;
   memcpy(scmd->sense_buffer, cmd_blk->sense, sense_len);
  }
  dma_pool_free(cs->sense_pool, cmd_blk->sense,
         cmd_blk->sense_addr);
  cmd_blk->sense = ((void*)0);
  cmd_blk->sense_addr = 0;
 }
 if (cmd_blk->dcdb) {
  dma_pool_free(cs->dcdb_pool, cmd_blk->dcdb,
         cmd_blk->dcdb_dma);
  cmd_blk->dcdb = ((void*)0);
  cmd_blk->dcdb_dma = 0;
 }
 if (cmd_blk->sgl) {
  dma_pool_free(cs->sg_pool, cmd_blk->sgl,
         cmd_blk->sgl_addr);
  cmd_blk->sgl = ((void*)0);
  cmd_blk->sgl_addr = 0;
 }
 if (cmd_blk->residual)
  scsi_set_resid(scmd, cmd_blk->residual);
 if (status == MYRS_STATUS_DEVICE_NON_RESPONSIVE ||
     status == MYRS_STATUS_DEVICE_NON_RESPONSIVE2)
  scmd->result = (DID_BAD_TARGET << 16);
 else
  scmd->result = (DID_OK << 16) | status;
 scmd->scsi_done(scmd);
}
