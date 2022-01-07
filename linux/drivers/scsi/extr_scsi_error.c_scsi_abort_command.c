
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_cmnd {int eh_eflags; int abort_work; struct scsi_device* device; } ;
struct Scsi_Host {int eh_deadline; int tmf_work_q; int host_lock; scalar_t__ last_reset; } ;


 int BUG_ON (int ) ;
 int FAILED ;
 int HZ ;
 int KERN_INFO ;
 int SCSI_EH_ABORT_SCHEDULED ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int SUCCESS ;
 int delayed_work_pending (int *) ;
 scalar_t__ jiffies ;
 int queue_delayed_work (int ,int *,int) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int
scsi_abort_command(struct scsi_cmnd *scmd)
{
 struct scsi_device *sdev = scmd->device;
 struct Scsi_Host *shost = sdev->host;
 unsigned long flags;

 if (scmd->eh_eflags & SCSI_EH_ABORT_SCHEDULED) {



  SCSI_LOG_ERROR_RECOVERY(3,
   scmd_printk(KERN_INFO, scmd,
        "previous abort failed\n"));
  BUG_ON(delayed_work_pending(&scmd->abort_work));
  return FAILED;
 }

 spin_lock_irqsave(shost->host_lock, flags);
 if (shost->eh_deadline != -1 && !shost->last_reset)
  shost->last_reset = jiffies;
 spin_unlock_irqrestore(shost->host_lock, flags);

 scmd->eh_eflags |= SCSI_EH_ABORT_SCHEDULED;
 SCSI_LOG_ERROR_RECOVERY(3,
  scmd_printk(KERN_INFO, scmd, "abort scheduled\n"));
 queue_delayed_work(shost->tmf_work_q, &scmd->abort_work, HZ / 100);
 return SUCCESS;
}
