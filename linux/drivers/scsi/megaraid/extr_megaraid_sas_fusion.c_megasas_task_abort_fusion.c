
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct scsi_cmnd {int result; TYPE_4__* device; } ;
struct megasas_instance {int reset_mutex; TYPE_3__* host; TYPE_2__* pdev; int adprecovery; } ;
struct MR_PRIV_DEVICE {int tm_busy; int is_tm_capable; } ;
struct TYPE_9__ {int id; int channel; TYPE_1__* host; struct MR_PRIV_DEVICE* hostdata; } ;
struct TYPE_8__ {int host_no; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 int DID_NO_CONNECT ;
 int FAILED ;
 int KERN_INFO ;
 int KERN_NOTICE ;
 scalar_t__ MEGASAS_HBA_OPERATIONAL ;
 int MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK ;
 int SUCCESS ;
 int TM_DEBUG ;
 scalar_t__ ULONG_MAX ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int *,char*,int ) ;
 int megasas_dbg_lvl ;
 int megasas_dump_fusion_io (struct scsi_cmnd*) ;
 scalar_t__ megasas_fusion_smid_lookup (struct scsi_cmnd*) ;
 scalar_t__ megasas_get_tm_devhandle (TYPE_4__*) ;
 int megasas_issue_tm (struct megasas_instance*,scalar_t__,int ,int ,scalar_t__,int ,struct MR_PRIV_DEVICE*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,...) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int sdev_printk (int ,TYPE_4__*,char*,...) ;

int megasas_task_abort_fusion(struct scsi_cmnd *scmd)
{
 struct megasas_instance *instance;
 u16 smid, devhandle;
 int ret;
 struct MR_PRIV_DEVICE *mr_device_priv_data;
 mr_device_priv_data = scmd->device->hostdata;

 instance = (struct megasas_instance *)scmd->device->host->hostdata;

 if (atomic_read(&instance->adprecovery) != MEGASAS_HBA_OPERATIONAL) {
  dev_err(&instance->pdev->dev, "Controller is not OPERATIONAL,"
  "SCSI host:%d\n", instance->host->host_no);
  ret = FAILED;
  return ret;
 }

 if (!mr_device_priv_data) {
  sdev_printk(KERN_INFO, scmd->device, "device been deleted! "
   "scmd(%p)\n", scmd);
  scmd->result = DID_NO_CONNECT << 16;
  ret = SUCCESS;
  goto out;
 }

 if (!mr_device_priv_data->is_tm_capable) {
  ret = FAILED;
  goto out;
 }

 mutex_lock(&instance->reset_mutex);

 smid = megasas_fusion_smid_lookup(scmd);

 if (!smid) {
  ret = SUCCESS;
  scmd_printk(KERN_NOTICE, scmd, "Command for which abort is"
   " issued is not found in outstanding commands\n");
  mutex_unlock(&instance->reset_mutex);
  goto out;
 }

 devhandle = megasas_get_tm_devhandle(scmd->device);

 if (devhandle == (u16)ULONG_MAX) {
  ret = SUCCESS;
  sdev_printk(KERN_INFO, scmd->device,
   "task abort issued for invalid devhandle\n");
  mutex_unlock(&instance->reset_mutex);
  goto out;
 }
 sdev_printk(KERN_INFO, scmd->device,
  "attempting task abort! scmd(0x%p) tm_dev_handle 0x%x\n",
  scmd, devhandle);

 mr_device_priv_data->tm_busy = 1;
 ret = megasas_issue_tm(instance, devhandle,
   scmd->device->channel, scmd->device->id, smid,
   MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK,
   mr_device_priv_data);
 mr_device_priv_data->tm_busy = 0;

 mutex_unlock(&instance->reset_mutex);
 scmd_printk(KERN_INFO, scmd, "task abort %s!! scmd(0x%p)\n",
   ((ret == SUCCESS) ? "SUCCESS" : "FAILED"), scmd);
out:
 scsi_print_command(scmd);
 if (megasas_dbg_lvl & TM_DEBUG)
  megasas_dump_fusion_io(scmd);

 return ret;
}
