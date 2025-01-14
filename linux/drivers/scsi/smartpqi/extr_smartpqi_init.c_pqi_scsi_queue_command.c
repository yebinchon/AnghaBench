
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct scsi_cmnd {int request; scalar_t__ result; TYPE_1__* device; } ;
struct pqi_scsi_dev {int scsi_cmds_outstanding; scalar_t__ aio_enabled; scalar_t__ raid_bypass_enabled; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_ctrl_info {struct pqi_queue_group* queue_groups; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct pqi_scsi_dev* hostdata; } ;


 int DID_NO_CONNECT ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int blk_rq_is_passthrough (int ) ;
 int pqi_aio_submit_scsi_cmd (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ;
 scalar_t__ pqi_ctrl_blocked (struct pqi_ctrl_info*) ;
 int pqi_ctrl_busy (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_in_ofa (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int pqi_ctrl_unbusy (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_device_in_remove (struct pqi_ctrl_info*,struct pqi_scsi_dev*) ;
 scalar_t__ pqi_device_in_reset (struct pqi_scsi_dev*) ;
 size_t pqi_get_hw_queue (struct pqi_ctrl_info*,struct scsi_cmnd*) ;
 scalar_t__ pqi_is_logical_device (struct pqi_scsi_dev*) ;
 int pqi_raid_bypass_submit_scsi_cmd (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ;
 int pqi_raid_submit_scsi_cmd (struct pqi_ctrl_info*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ;
 int pqi_scsi_done (struct scsi_cmnd*) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 struct pqi_ctrl_info* shost_to_hba (struct Scsi_Host*) ;

__attribute__((used)) static int pqi_scsi_queue_command(struct Scsi_Host *shost,
 struct scsi_cmnd *scmd)
{
 int rc;
 struct pqi_ctrl_info *ctrl_info;
 struct pqi_scsi_dev *device;
 u16 hw_queue;
 struct pqi_queue_group *queue_group;
 bool raid_bypassed;

 device = scmd->device->hostdata;
 ctrl_info = shost_to_hba(shost);

 if (!device) {
  set_host_byte(scmd, DID_NO_CONNECT);
  pqi_scsi_done(scmd);
  return 0;
 }

 atomic_inc(&device->scsi_cmds_outstanding);

 if (pqi_ctrl_offline(ctrl_info) || pqi_device_in_remove(ctrl_info,
        device)) {
  set_host_byte(scmd, DID_NO_CONNECT);
  pqi_scsi_done(scmd);
  return 0;
 }

 pqi_ctrl_busy(ctrl_info);
 if (pqi_ctrl_blocked(ctrl_info) || pqi_device_in_reset(device) ||
     pqi_ctrl_in_ofa(ctrl_info)) {
  rc = SCSI_MLQUEUE_HOST_BUSY;
  goto out;
 }





 scmd->result = 0;

 hw_queue = pqi_get_hw_queue(ctrl_info, scmd);
 queue_group = &ctrl_info->queue_groups[hw_queue];

 if (pqi_is_logical_device(device)) {
  raid_bypassed = 0;
  if (device->raid_bypass_enabled &&
    !blk_rq_is_passthrough(scmd->request)) {
   rc = pqi_raid_bypass_submit_scsi_cmd(ctrl_info, device,
    scmd, queue_group);
   if (rc == 0 || rc == SCSI_MLQUEUE_HOST_BUSY)
    raid_bypassed = 1;
  }
  if (!raid_bypassed)
   rc = pqi_raid_submit_scsi_cmd(ctrl_info, device, scmd,
    queue_group);
 } else {
  if (device->aio_enabled)
   rc = pqi_aio_submit_scsi_cmd(ctrl_info, device, scmd,
    queue_group);
  else
   rc = pqi_raid_submit_scsi_cmd(ctrl_info, device, scmd,
    queue_group);
 }

out:
 pqi_ctrl_unbusy(ctrl_info);
 if (rc)
  atomic_dec(&device->scsi_cmds_outstanding);

 return rc;
}
