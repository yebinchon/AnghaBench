
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; int host_eh_scheduled; } ;


 int SHOST_CANCEL_RECOVERY ;
 int SHOST_RECOVERY ;
 int scsi_eh_wakeup (struct Scsi_Host*) ;
 scalar_t__ scsi_host_set_state (struct Scsi_Host*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_schedule_eh(struct Scsi_Host *shost)
{
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);

 if (scsi_host_set_state(shost, SHOST_RECOVERY) == 0 ||
     scsi_host_set_state(shost, SHOST_CANCEL_RECOVERY) == 0) {
  shost->host_eh_scheduled++;
  scsi_eh_wakeup(shost);
 }

 spin_unlock_irqrestore(shost->host_lock, flags);
}
