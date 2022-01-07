
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {scalar_t__ sense_buffer; int sc_data_direction; } ;
struct pvscsi_ctx {scalar_t__ sensePA; scalar_t__ dataPA; scalar_t__ sglPA; struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 unsigned int SCSI_SENSE_BUFFERSIZE ;
 unsigned int SGL_SIZE ;
 int dma_unmap_single (int *,scalar_t__,unsigned int,int ) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 unsigned int scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void pvscsi_unmap_buffers(const struct pvscsi_adapter *adapter,
     struct pvscsi_ctx *ctx)
{
 struct scsi_cmnd *cmd;
 unsigned bufflen;

 cmd = ctx->cmd;
 bufflen = scsi_bufflen(cmd);

 if (bufflen != 0) {
  unsigned count = scsi_sg_count(cmd);

  if (count != 0) {
   scsi_dma_unmap(cmd);
   if (ctx->sglPA) {
    dma_unmap_single(&adapter->dev->dev, ctx->sglPA,
       SGL_SIZE, DMA_TO_DEVICE);
    ctx->sglPA = 0;
   }
  } else
   dma_unmap_single(&adapter->dev->dev, ctx->dataPA,
      bufflen, cmd->sc_data_direction);
 }
 if (cmd->sense_buffer)
  dma_unmap_single(&adapter->dev->dev, ctx->sensePA,
     SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
}
