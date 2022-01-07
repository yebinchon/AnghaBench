
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct mvumi_sgl {int dummy; } ;
struct mvumi_msg_frame {int dummy; } ;
struct mvumi_hba {int ib_max_size; int max_io; unsigned int max_sge; int max_transfer_size; struct Scsi_Host* shost; scalar_t__ max_target_id; TYPE_1__* pdev; int sas_discovery_mutex; int dm_thread; int pnp_count; int fw_flag; int unique_id; } ;
struct Scsi_Host {int can_queue; unsigned int sg_tablesize; int max_sectors; int cmd_per_lun; int max_cmd_len; scalar_t__ max_id; int unique_id; int irq; } ;
struct TYPE_2__ {scalar_t__ device; int dev; int irq; } ;


 scalar_t__ IS_ERR (int ) ;
 int MAX_COMMAND_SIZE ;
 int MVUMI_FW_ATTACH ;
 scalar_t__ PCI_DEVICE_ID_MARVELL_MV9580 ;
 int atomic_set (int *,int) ;
 int dev_err (int *,char*) ;
 int kthread_create (int ,struct mvumi_hba*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int mvumi_rescan_bus ;
 int scsi_add_device (struct Scsi_Host*,int ,scalar_t__,int ) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct scsi_device* scsi_device_lookup (struct Scsi_Host*,int ,scalar_t__,int ) ;
 int scsi_device_put (struct scsi_device*) ;
 int scsi_remove_device (struct scsi_device*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int mvumi_io_attach(struct mvumi_hba *mhba)
{
 struct Scsi_Host *host = mhba->shost;
 struct scsi_device *sdev = ((void*)0);
 int ret;
 unsigned int max_sg = (mhba->ib_max_size + 4 -
  sizeof(struct mvumi_msg_frame)) / sizeof(struct mvumi_sgl);

 host->irq = mhba->pdev->irq;
 host->unique_id = mhba->unique_id;
 host->can_queue = (mhba->max_io - 1) ? (mhba->max_io - 1) : 1;
 host->sg_tablesize = mhba->max_sge > max_sg ? max_sg : mhba->max_sge;
 host->max_sectors = mhba->max_transfer_size / 512;
 host->cmd_per_lun = (mhba->max_io - 1) ? (mhba->max_io - 1) : 1;
 host->max_id = mhba->max_target_id;
 host->max_cmd_len = MAX_COMMAND_SIZE;

 ret = scsi_add_host(host, &mhba->pdev->dev);
 if (ret) {
  dev_err(&mhba->pdev->dev, "scsi_add_host failed\n");
  return ret;
 }
 mhba->fw_flag |= MVUMI_FW_ATTACH;

 mutex_lock(&mhba->sas_discovery_mutex);
 if (mhba->pdev->device == PCI_DEVICE_ID_MARVELL_MV9580)
  ret = scsi_add_device(host, 0, mhba->max_target_id - 1, 0);
 else
  ret = 0;
 if (ret) {
  dev_err(&mhba->pdev->dev, "add virtual device failed\n");
  mutex_unlock(&mhba->sas_discovery_mutex);
  goto fail_add_device;
 }

 mhba->dm_thread = kthread_create(mvumi_rescan_bus,
      mhba, "mvumi_scanthread");
 if (IS_ERR(mhba->dm_thread)) {
  dev_err(&mhba->pdev->dev,
   "failed to create device scan thread\n");
  mutex_unlock(&mhba->sas_discovery_mutex);
  goto fail_create_thread;
 }
 atomic_set(&mhba->pnp_count, 1);
 wake_up_process(mhba->dm_thread);

 mutex_unlock(&mhba->sas_discovery_mutex);
 return 0;

fail_create_thread:
 if (mhba->pdev->device == PCI_DEVICE_ID_MARVELL_MV9580)
  sdev = scsi_device_lookup(mhba->shost, 0,
      mhba->max_target_id - 1, 0);
 if (sdev) {
  scsi_remove_device(sdev);
  scsi_device_put(sdev);
 }
fail_add_device:
 scsi_remove_host(mhba->shost);
 return ret;
}
