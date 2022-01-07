
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int rcu; int eh_entry; TYPE_1__* device; } ;
struct Scsi_Host {int eh_deadline; int host_lock; int eh_cmd_q; scalar_t__ last_reset; int ehandler; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int SHOST_CANCEL_RECOVERY ;
 int SHOST_RECOVERY ;
 int WARN_ON_ONCE (int) ;
 int call_rcu (int *,int ) ;
 scalar_t__ jiffies ;
 int list_add_tail (int *,int *) ;
 int scsi_eh_inc_host_failed ;
 int scsi_eh_reset (struct scsi_cmnd*) ;
 int scsi_host_set_state (struct Scsi_Host*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_eh_scmd_add(struct scsi_cmnd *scmd)
{
 struct Scsi_Host *shost = scmd->device->host;
 unsigned long flags;
 int ret;

 WARN_ON_ONCE(!shost->ehandler);

 spin_lock_irqsave(shost->host_lock, flags);
 if (scsi_host_set_state(shost, SHOST_RECOVERY)) {
  ret = scsi_host_set_state(shost, SHOST_CANCEL_RECOVERY);
  WARN_ON_ONCE(ret);
 }
 if (shost->eh_deadline != -1 && !shost->last_reset)
  shost->last_reset = jiffies;

 scsi_eh_reset(scmd);
 list_add_tail(&scmd->eh_entry, &shost->eh_cmd_q);
 spin_unlock_irqrestore(shost->host_lock, flags);




 call_rcu(&scmd->rcu, scsi_eh_inc_host_failed);
}
