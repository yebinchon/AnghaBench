
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int result; scalar_t__* cmnd; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; } ;
struct megasas_instance {int unload; scalar_t__ issuepend_done; scalar_t__ fw_supported_vd_count; TYPE_2__* instancet; int fw_sync_cache_support; int adprecovery; } ;
struct Scsi_Host {int dummy; } ;
struct MR_PRIV_DEVICE {scalar_t__ tm_busy; } ;
struct TYPE_6__ {scalar_t__ id; scalar_t__ lun; struct MR_PRIV_DEVICE* hostdata; TYPE_1__* host; } ;
struct TYPE_5__ {int (* build_and_issue_cmd ) (struct megasas_instance*,struct scsi_cmnd*) ;} ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int DID_BAD_TARGET ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int DID_REQUEUE ;
 scalar_t__ MEGASAS_ADPRESET_SM_INFAULT ;
 scalar_t__ MEGASAS_HBA_OPERATIONAL ;
 scalar_t__ MEGASAS_HW_CRITICAL_ERROR ;
 scalar_t__ MEGASAS_IS_LOGICAL (TYPE_3__*) ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 scalar_t__ SYNCHRONIZE_CACHE ;
 scalar_t__ atomic_read (int *) ;
 int megasas_check_mpio_paths (struct megasas_instance*,struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 int stub3 (struct scsi_cmnd*) ;
 int stub4 (struct scsi_cmnd*) ;
 int stub5 (struct megasas_instance*,struct scsi_cmnd*) ;
 int stub6 (struct scsi_cmnd*) ;

__attribute__((used)) static int
megasas_queue_command(struct Scsi_Host *shost, struct scsi_cmnd *scmd)
{
 struct megasas_instance *instance;
 struct MR_PRIV_DEVICE *mr_device_priv_data;

 instance = (struct megasas_instance *)
     scmd->device->host->hostdata;

 if (instance->unload == 1) {
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  return 0;
 }

 if (instance->issuepend_done == 0)
  return SCSI_MLQUEUE_HOST_BUSY;



 if (atomic_read(&instance->adprecovery) == MEGASAS_ADPRESET_SM_INFAULT) {
  if (megasas_check_mpio_paths(instance, scmd) ==
      (DID_REQUEUE << 16)) {
   return SCSI_MLQUEUE_HOST_BUSY;
  } else {
   scmd->result = DID_NO_CONNECT << 16;
   scmd->scsi_done(scmd);
   return 0;
  }
 }

 if (atomic_read(&instance->adprecovery) == MEGASAS_HW_CRITICAL_ERROR) {
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  return 0;
 }

 mr_device_priv_data = scmd->device->hostdata;
 if (!mr_device_priv_data) {
  scmd->result = DID_NO_CONNECT << 16;
  scmd->scsi_done(scmd);
  return 0;
 }

 if (atomic_read(&instance->adprecovery) != MEGASAS_HBA_OPERATIONAL)
  return SCSI_MLQUEUE_HOST_BUSY;

 if (mr_device_priv_data->tm_busy)
  return SCSI_MLQUEUE_DEVICE_BUSY;


 scmd->result = 0;

 if (MEGASAS_IS_LOGICAL(scmd->device) &&
     (scmd->device->id >= instance->fw_supported_vd_count ||
  scmd->device->lun)) {
  scmd->result = DID_BAD_TARGET << 16;
  goto out_done;
 }

 if ((scmd->cmnd[0] == SYNCHRONIZE_CACHE) &&
     MEGASAS_IS_LOGICAL(scmd->device) &&
     (!instance->fw_sync_cache_support)) {
  scmd->result = DID_OK << 16;
  goto out_done;
 }

 return instance->instancet->build_and_issue_cmd(instance, scmd);

 out_done:
 scmd->scsi_done(scmd);
 return 0;
}
