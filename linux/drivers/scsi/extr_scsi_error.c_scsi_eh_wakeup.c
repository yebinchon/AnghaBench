
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ host_failed; int ehandler; int host_lock; } ;


 int KERN_INFO ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int lockdep_assert_held (int ) ;
 scalar_t__ scsi_host_busy (struct Scsi_Host*) ;
 int shost_printk (int ,struct Scsi_Host*,char*) ;
 int trace_scsi_eh_wakeup (struct Scsi_Host*) ;
 int wake_up_process (int ) ;

void scsi_eh_wakeup(struct Scsi_Host *shost)
{
 lockdep_assert_held(shost->host_lock);

 if (scsi_host_busy(shost) == shost->host_failed) {
  trace_scsi_eh_wakeup(shost);
  wake_up_process(shost->ehandler);
  SCSI_LOG_ERROR_RECOVERY(5, shost_printk(KERN_INFO, shost,
   "Waking error handler thread\n"));
 }
}
