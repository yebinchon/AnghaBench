
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int host_lock; scalar_t__ host_eh_scheduled; scalar_t__ host_failed; int host_busy; } ;


 int atomic_dec (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int scsi_eh_wakeup (struct Scsi_Host*) ;
 int scsi_host_in_recovery (struct Scsi_Host*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void scsi_dec_host_busy(struct Scsi_Host *shost)
{
 unsigned long flags;

 rcu_read_lock();
 atomic_dec(&shost->host_busy);
 if (unlikely(scsi_host_in_recovery(shost))) {
  spin_lock_irqsave(shost->host_lock, flags);
  if (shost->host_failed || shost->host_eh_scheduled)
   scsi_eh_wakeup(shost);
  spin_unlock_irqrestore(shost->host_lock, flags);
 }
 rcu_read_unlock();
}
