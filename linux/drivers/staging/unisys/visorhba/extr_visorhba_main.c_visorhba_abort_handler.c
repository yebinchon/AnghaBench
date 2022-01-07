
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visordisk_info {int ios_threshold; int error_count; } ;
struct scsi_device {struct visordisk_info* hostdata; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;


 int DID_ABORT ;
 int IOS_ERROR_THRESHOLD ;
 int SUCCESS ;
 int TASK_MGMT_ABORT_TASK ;
 scalar_t__ VISORHBA_ERROR_COUNT ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int forward_taskmgmt_command (int ,struct scsi_device*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static int visorhba_abort_handler(struct scsi_cmnd *scsicmd)
{

 struct scsi_device *scsidev;
 struct visordisk_info *vdisk;
 int rtn;

 scsidev = scsicmd->device;
 vdisk = scsidev->hostdata;
 if (atomic_read(&vdisk->error_count) < VISORHBA_ERROR_COUNT)
  atomic_inc(&vdisk->error_count);
 else
  atomic_set(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
 rtn = forward_taskmgmt_command(TASK_MGMT_ABORT_TASK, scsidev);
 if (rtn == SUCCESS) {
  scsicmd->result = DID_ABORT << 16;
  scsicmd->scsi_done(scsicmd);
 }
 return rtn;
}
