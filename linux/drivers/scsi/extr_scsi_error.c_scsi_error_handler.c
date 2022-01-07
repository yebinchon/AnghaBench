
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {scalar_t__ host_failed; scalar_t__ host_eh_scheduled; int * ehandler; int host_no; int eh_noresume; TYPE_1__* transportt; } ;
struct TYPE_2__ {int (* eh_strategy_handler ) (struct Scsi_Host*) ;} ;


 int KERN_ERR ;
 int KERN_INFO ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 scalar_t__ kthread_should_stop () ;
 int schedule () ;
 scalar_t__ scsi_autopm_get_host (struct Scsi_Host*) ;
 int scsi_autopm_put_host (struct Scsi_Host*) ;
 scalar_t__ scsi_host_busy (struct Scsi_Host*) ;
 int scsi_restart_operations (struct Scsi_Host*) ;
 int scsi_unjam_host (struct Scsi_Host*) ;
 int set_current_state (int ) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ,...) ;
 int stub1 (struct Scsi_Host*) ;

int scsi_error_handler(void *data)
{
 struct Scsi_Host *shost = data;







 while (1) {






  set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop())
   break;

  if ((shost->host_failed == 0 && shost->host_eh_scheduled == 0) ||
      shost->host_failed != scsi_host_busy(shost)) {
   SCSI_LOG_ERROR_RECOVERY(1,
    shost_printk(KERN_INFO, shost,
          "scsi_eh_%d: sleeping\n",
          shost->host_no));
   schedule();
   continue;
  }

  __set_current_state(TASK_RUNNING);
  SCSI_LOG_ERROR_RECOVERY(1,
   shost_printk(KERN_INFO, shost,
         "scsi_eh_%d: waking up %d/%d/%d\n",
         shost->host_no, shost->host_eh_scheduled,
         shost->host_failed,
         scsi_host_busy(shost)));






  if (!shost->eh_noresume && scsi_autopm_get_host(shost) != 0) {
   SCSI_LOG_ERROR_RECOVERY(1,
    shost_printk(KERN_ERR, shost,
          "scsi_eh_%d: unable to autoresume\n",
          shost->host_no));
   continue;
  }

  if (shost->transportt->eh_strategy_handler)
   shost->transportt->eh_strategy_handler(shost);
  else
   scsi_unjam_host(shost);


  shost->host_failed = 0;
  scsi_restart_operations(shost);
  if (!shost->eh_noresume)
   scsi_autopm_put_host(shost);
 }
 __set_current_state(TASK_RUNNING);

 SCSI_LOG_ERROR_RECOVERY(1,
  shost_printk(KERN_INFO, shost,
        "Error handler scsi_eh_%d exiting\n",
        shost->host_no));
 shost->ehandler = ((void*)0);
 return 0;
}
