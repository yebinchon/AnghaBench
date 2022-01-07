
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scsi_device {int lun; int id; int channel; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; scalar_t__ sense_buffer; int cmnd; int cmd_len; struct scsi_device* device; } ;
struct pvscsi_ctx {scalar_t__ sensePA; } ;
struct pvscsi_adapter {TYPE_1__* dev; struct PVSCSIRingReqDesc* req_ring; struct PVSCSIRingsState* rings_state; } ;
struct PVSCSIRingsState {int reqNumEntriesLog2; int reqProdIdx; int cmpConsIdx; } ;
struct PVSCSIRingReqDesc {int context; scalar_t__ flags; int tag; int cdbLen; int cdb; int vcpuHint; scalar_t__ senseAddr; scalar_t__ senseLen; int * lun; int target; int bus; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 scalar_t__ DMA_NONE ;
 scalar_t__ DMA_TO_DEVICE ;
 int ENOMEM ;
 int KERN_ERR ;
 int MASK (int) ;
 scalar_t__ PVSCSI_FLAG_CMD_DIR_NONE ;
 scalar_t__ PVSCSI_FLAG_CMD_DIR_TODEVICE ;
 scalar_t__ PVSCSI_FLAG_CMD_DIR_TOHOST ;
 scalar_t__ SCSI_SENSE_BUFFERSIZE ;
 int SIMPLE_QUEUE_TAG ;
 int barrier () ;
 scalar_t__ dma_map_single (int *,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ dma_mapping_error (int *,scalar_t__) ;
 int dma_unmap_single (int *,scalar_t__,scalar_t__,scalar_t__) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ pvscsi_map_buffers (struct pvscsi_adapter*,struct pvscsi_ctx*,struct scsi_cmnd*,struct PVSCSIRingReqDesc*) ;
 int pvscsi_map_context (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;
 int smp_processor_id () ;

__attribute__((used)) static int pvscsi_queue_ring(struct pvscsi_adapter *adapter,
        struct pvscsi_ctx *ctx, struct scsi_cmnd *cmd)
{
 struct PVSCSIRingsState *s;
 struct PVSCSIRingReqDesc *e;
 struct scsi_device *sdev;
 u32 req_entries;

 s = adapter->rings_state;
 sdev = cmd->device;
 req_entries = s->reqNumEntriesLog2;
 if (s->reqProdIdx - s->cmpConsIdx >= 1 << req_entries) {
  scmd_printk(KERN_ERR, cmd, "vmw_pvscsi: "
       "ring full: reqProdIdx=%d cmpConsIdx=%d\n",
       s->reqProdIdx, s->cmpConsIdx);
  return -1;
 }

 e = adapter->req_ring + (s->reqProdIdx & MASK(req_entries));

 e->bus = sdev->channel;
 e->target = sdev->id;
 memset(e->lun, 0, sizeof(e->lun));
 e->lun[1] = sdev->lun;

 if (cmd->sense_buffer) {
  ctx->sensePA = dma_map_single(&adapter->dev->dev,
    cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
    DMA_FROM_DEVICE);
  if (dma_mapping_error(&adapter->dev->dev, ctx->sensePA)) {
   scmd_printk(KERN_ERR, cmd,
        "vmw_pvscsi: Failed to map sense buffer for DMA.\n");
   ctx->sensePA = 0;
   return -ENOMEM;
  }
  e->senseAddr = ctx->sensePA;
  e->senseLen = SCSI_SENSE_BUFFERSIZE;
 } else {
  e->senseLen = 0;
  e->senseAddr = 0;
 }
 e->cdbLen = cmd->cmd_len;
 e->vcpuHint = smp_processor_id();
 memcpy(e->cdb, cmd->cmnd, e->cdbLen);

 e->tag = SIMPLE_QUEUE_TAG;

 if (cmd->sc_data_direction == DMA_FROM_DEVICE)
  e->flags = PVSCSI_FLAG_CMD_DIR_TOHOST;
 else if (cmd->sc_data_direction == DMA_TO_DEVICE)
  e->flags = PVSCSI_FLAG_CMD_DIR_TODEVICE;
 else if (cmd->sc_data_direction == DMA_NONE)
  e->flags = PVSCSI_FLAG_CMD_DIR_NONE;
 else
  e->flags = 0;

 if (pvscsi_map_buffers(adapter, ctx, cmd, e) != 0) {
  if (cmd->sense_buffer) {
   dma_unmap_single(&adapter->dev->dev, ctx->sensePA,
      SCSI_SENSE_BUFFERSIZE,
      DMA_FROM_DEVICE);
   ctx->sensePA = 0;
  }
  return -ENOMEM;
 }

 e->context = pvscsi_map_context(adapter, ctx);

 barrier();

 s->reqProdIdx++;

 return 0;
}
