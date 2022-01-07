
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;unsigned char* cmnd; TYPE_1__* device; } ;
struct pvscsi_ctx {int dummy; } ;
struct pvscsi_adapter {int hw_lock; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int sdev_gendev; struct Scsi_Host* host; } ;


 int SCSI_MLQUEUE_HOST_BUSY ;
 int dev_dbg (int *,char*,struct scsi_cmnd*,struct pvscsi_ctx*,unsigned char) ;
 struct pvscsi_ctx* pvscsi_acquire_context (struct pvscsi_adapter*,struct scsi_cmnd*) ;
 int pvscsi_kick_io (struct pvscsi_adapter*,unsigned char) ;
 scalar_t__ pvscsi_queue_ring (struct pvscsi_adapter*,struct pvscsi_ctx*,struct scsi_cmnd*) ;
 int pvscsi_release_context (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 struct pvscsi_adapter* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pvscsi_queue_lck(struct scsi_cmnd *cmd, void (*done)(struct scsi_cmnd *))
{
 struct Scsi_Host *host = cmd->device->host;
 struct pvscsi_adapter *adapter = shost_priv(host);
 struct pvscsi_ctx *ctx;
 unsigned long flags;
 unsigned char op;

 spin_lock_irqsave(&adapter->hw_lock, flags);

 ctx = pvscsi_acquire_context(adapter, cmd);
 if (!ctx || pvscsi_queue_ring(adapter, ctx, cmd) != 0) {
  if (ctx)
   pvscsi_release_context(adapter, ctx);
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
  return SCSI_MLQUEUE_HOST_BUSY;
 }

 cmd->scsi_done = done;
 op = cmd->cmnd[0];

 dev_dbg(&cmd->device->sdev_gendev,
  "queued cmd %p, ctx %p, op=%x\n", cmd, ctx, op);

 spin_unlock_irqrestore(&adapter->hw_lock, flags);

 pvscsi_kick_io(adapter, op);

 return 0;
}
