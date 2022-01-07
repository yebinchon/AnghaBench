
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int* cmnd; scalar_t__ cmd_len; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct Scsi_Host {scalar_t__ max_cmd_len; scalar_t__ shost_state; TYPE_1__* hostt; } ;
struct TYPE_4__ {scalar_t__ sdev_state; int lun; struct Scsi_Host* host; scalar_t__ lun_in_cdb; int iorequest_cnt; } ;
struct TYPE_3__ {int (* queuecommand ) (struct Scsi_Host*,struct scsi_cmnd*) ;} ;


 int DID_ABORT ;
 int DID_NO_CONNECT ;
 int KERN_INFO ;
 int SCSI_LOG_MLQUEUE (int,int ) ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 scalar_t__ SDEV_DEL ;
 scalar_t__ SHOST_DEL ;
 int atomic_inc (int *) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;
 int scsi_device_blocked (TYPE_2__*) ;
 int scsi_log_send (struct scsi_cmnd*) ;
 int stub1 (struct Scsi_Host*,struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 int trace_scsi_dispatch_cmd_error (struct scsi_cmnd*,int) ;
 int trace_scsi_dispatch_cmd_start (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int scsi_dispatch_cmd(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *host = cmd->device->host;
 int rtn = 0;

 atomic_inc(&cmd->device->iorequest_cnt);


 if (unlikely(cmd->device->sdev_state == SDEV_DEL)) {



  cmd->result = DID_NO_CONNECT << 16;
  goto done;
 }


 if (unlikely(scsi_device_blocked(cmd->device))) {







  SCSI_LOG_MLQUEUE(3, scmd_printk(KERN_INFO, cmd,
   "queuecommand : device blocked\n"));
  return SCSI_MLQUEUE_DEVICE_BUSY;
 }


 if (cmd->device->lun_in_cdb)
  cmd->cmnd[1] = (cmd->cmnd[1] & 0x1f) |
          (cmd->device->lun << 5 & 0xe0);

 scsi_log_send(cmd);





 if (cmd->cmd_len > cmd->device->host->max_cmd_len) {
  SCSI_LOG_MLQUEUE(3, scmd_printk(KERN_INFO, cmd,
          "queuecommand : command too long. "
          "cdb_size=%d host->max_cmd_len=%d\n",
          cmd->cmd_len, cmd->device->host->max_cmd_len));
  cmd->result = (DID_ABORT << 16);
  goto done;
 }

 if (unlikely(host->shost_state == SHOST_DEL)) {
  cmd->result = (DID_NO_CONNECT << 16);
  goto done;

 }

 trace_scsi_dispatch_cmd_start(cmd);
 rtn = host->hostt->queuecommand(host, cmd);
 if (rtn) {
  trace_scsi_dispatch_cmd_error(cmd, rtn);
  if (rtn != SCSI_MLQUEUE_DEVICE_BUSY &&
      rtn != SCSI_MLQUEUE_TARGET_BUSY)
   rtn = SCSI_MLQUEUE_HOST_BUSY;

  SCSI_LOG_MLQUEUE(3, scmd_printk(KERN_INFO, cmd,
   "queuecommand : request rejected\n"));
 }

 return rtn;
 done:
 cmd->scsi_done(cmd);
 return 0;
}
