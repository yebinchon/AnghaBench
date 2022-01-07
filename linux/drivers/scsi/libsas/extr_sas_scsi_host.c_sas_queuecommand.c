
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct sas_task {int dummy; } ;
struct sas_internal {TYPE_2__* dft; } ;
struct TYPE_4__ {TYPE_3__* ap; } ;
struct domain_device {TYPE_1__ sata_dev; int state; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int (* lldd_execute_task ) (struct sas_task*,int ) ;} ;


 int ASSIGN_SAS_TASK (struct scsi_cmnd*,int *) ;
 int DID_BAD_TARGET ;
 int DID_ERROR ;
 int DID_SOFT_ERROR ;
 int GFP_ATOMIC ;
 int SAS_DEV_GONE ;
 int SAS_QUEUE_FULL ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int ata_sas_queuecmd (struct scsi_cmnd*,TYPE_3__*) ;
 struct domain_device* cmd_to_domain_dev (struct scsi_cmnd*) ;
 scalar_t__ dev_is_sata (struct domain_device*) ;
 int pr_debug (char*,int) ;
 struct sas_task* sas_create_task (struct scsi_cmnd*,struct domain_device*,int ) ;
 int sas_free_task (struct sas_task*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct sas_task*,int ) ;
 int stub2 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct sas_internal* to_sas_internal (int ) ;

int sas_queuecommand(struct Scsi_Host *host, struct scsi_cmnd *cmd)
{
 struct sas_internal *i = to_sas_internal(host->transportt);
 struct domain_device *dev = cmd_to_domain_dev(cmd);
 struct sas_task *task;
 int res = 0;


 if (test_bit(SAS_DEV_GONE, &dev->state)) {
  cmd->result = DID_BAD_TARGET << 16;
  goto out_done;
 }

 if (dev_is_sata(dev)) {
  spin_lock_irq(dev->sata_dev.ap->lock);
  res = ata_sas_queuecmd(cmd, dev->sata_dev.ap);
  spin_unlock_irq(dev->sata_dev.ap->lock);
  return res;
 }

 task = sas_create_task(cmd, dev, GFP_ATOMIC);
 if (!task)
  return SCSI_MLQUEUE_HOST_BUSY;

 res = i->dft->lldd_execute_task(task, GFP_ATOMIC);
 if (res)
  goto out_free_task;
 return 0;

out_free_task:
 pr_debug("lldd_execute_task returned: %d\n", res);
 ASSIGN_SAS_TASK(cmd, ((void*)0));
 sas_free_task(task);
 if (res == -SAS_QUEUE_FULL)
  cmd->result = DID_SOFT_ERROR << 16;
 else
  cmd->result = DID_ERROR << 16;
out_done:
 cmd->scsi_done(cmd);
 return 0;
}
