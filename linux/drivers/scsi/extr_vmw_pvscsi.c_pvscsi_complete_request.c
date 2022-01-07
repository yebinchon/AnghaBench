
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int * cmnd; TYPE_1__* device; scalar_t__ sense_buffer; } ;
struct pvscsi_ctx {struct completion* abort_cmp; struct scsi_cmnd* cmd; } ;
struct pvscsi_adapter {int dummy; } ;
struct completion {int dummy; } ;
struct PVSCSIRingCmpDesc {int hostStatus; int scsiStatus; scalar_t__ dataLen; int context; } ;
struct TYPE_2__ {int sdev_gendev; } ;
 int DID_BAD_TARGET ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int DID_OK ;
 int DID_PARITY ;
 int DID_RESET ;
 int DRIVER_INVALID ;
 int DRIVER_SENSE ;
 int KERN_DEBUG ;
 int SAM_STAT_CHECK_CONDITION ;
 int SAM_STAT_COMMAND_TERMINATED ;
 int SAM_STAT_GOOD ;
 int complete (struct completion*) ;
 int dev_dbg (int *,char*,struct scsi_cmnd*,int ,struct pvscsi_ctx*,int,int,int) ;
 struct pvscsi_ctx* pvscsi_get_context (struct pvscsi_adapter*,int ) ;
 int pvscsi_release_context (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 int pvscsi_unmap_buffers (struct pvscsi_adapter*,struct pvscsi_ctx*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void pvscsi_complete_request(struct pvscsi_adapter *adapter,
        const struct PVSCSIRingCmpDesc *e)
{
 struct pvscsi_ctx *ctx;
 struct scsi_cmnd *cmd;
 struct completion *abort_cmp;
 u32 btstat = e->hostStatus;
 u32 sdstat = e->scsiStatus;

 ctx = pvscsi_get_context(adapter, e->context);
 cmd = ctx->cmd;
 abort_cmp = ctx->abort_cmp;
 pvscsi_unmap_buffers(adapter, ctx);
 pvscsi_release_context(adapter, ctx);
 if (abort_cmp) {






  complete(abort_cmp);
  return;
 }

 cmd->result = 0;
 if (sdstat != SAM_STAT_GOOD &&
     (btstat == 129 ||
      btstat == 138 ||
      btstat == 137)) {
  if (sdstat == SAM_STAT_COMMAND_TERMINATED) {
   cmd->result = (DID_RESET << 16);
  } else {
   cmd->result = (DID_OK << 16) | sdstat;
   if (sdstat == SAM_STAT_CHECK_CONDITION &&
       cmd->sense_buffer)
    cmd->result |= (DRIVER_SENSE << 24);
  }
 } else
  switch (btstat) {
  case 129:
  case 138:
  case 137:

   cmd->result = (DID_OK << 16);
   break;

  case 145:
  case 144:

   scsi_set_resid(cmd, scsi_bufflen(cmd) - e->dataLen);
   cmd->result = (DID_ERROR << 16);
   break;

  case 132:

   cmd->result = (DID_BAD_TARGET << 16);
   break;

  case 136:
  case 128:
  case 148:
   cmd->result = (DRIVER_INVALID << 24);


  case 142:
  case 139:
  case 140:
  case 135:
  case 143:
  case 141:
  case 147:
  case 131:
   cmd->result |= (DID_ERROR << 16);
   break;

  case 130:
  case 134:
  case 146:
   cmd->result = (DID_RESET << 16);
   break;

  case 149:
   cmd->result = (DID_BUS_BUSY << 16);
   break;

  case 133:
   cmd->result = (DID_PARITY << 16);
   break;

  default:
   cmd->result = (DID_ERROR << 16);
   scmd_printk(KERN_DEBUG, cmd,
        "Unknown completion status: 0x%x\n",
        btstat);
 }

 dev_dbg(&cmd->device->sdev_gendev,
  "cmd=%p %x ctx=%p result=0x%x status=0x%x,%x\n",
  cmd, cmd->cmnd[0], ctx, cmd->result, btstat, sdstat);

 cmd->scsi_done(cmd);
}
