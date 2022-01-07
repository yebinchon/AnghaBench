
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scsi_cmnd {int tag; } ;
typedef enum res_abort { ____Placeholder_res_abort } res_abort ;
struct TYPE_8__ {int phase; int disconnectable; } ;
struct TYPE_7__ {int disconnected; int issue; } ;
struct TYPE_9__ {struct scsi_cmnd* origSCpnt; struct scsi_cmnd* SCpnt; TYPE_2__ scsi; TYPE_1__ queues; } ;
typedef TYPE_3__ AS_Host ;


 int CMND_DISCONNECT ;


 int SBIC_CMND ;
 int acornscsi_abortcmd (TYPE_3__*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*) ;
 scalar_t__ queue_remove_cmd (int *,struct scsi_cmnd*) ;
 int res_not_running ;
 int res_snooze ;
 int res_success ;
 int res_success_clear ;
 int sbic_arm_write (TYPE_3__*,int ,int ) ;

__attribute__((used)) static enum res_abort acornscsi_do_abort(AS_Host *host, struct scsi_cmnd *SCpnt)
{
 enum res_abort res = res_not_running;

 if (queue_remove_cmd(&host->queues.issue, SCpnt)) {







  printk("on issue queue ");

  res = res_success;
 } else if (queue_remove_cmd(&host->queues.disconnected, SCpnt)) {
  printk("on disconnected queue ");

  res = res_success;
 } else if (host->SCpnt == SCpnt) {
  unsigned long flags;


  printk("executing ");


  local_irq_save(flags);
  switch (host->scsi.phase) {
  case 128:
   if (host->scsi.disconnectable) {
    host->scsi.disconnectable = 0;
    host->SCpnt = ((void*)0);
    res = res_success;
   }
   break;






  case 129:
   sbic_arm_write(host, SBIC_CMND, CMND_DISCONNECT);
   host->SCpnt = ((void*)0);
   res = res_success_clear;
   break;

  default:
   acornscsi_abortcmd(host, host->SCpnt->tag);
   res = res_snooze;
  }
  local_irq_restore(flags);
 } else if (host->origSCpnt == SCpnt) {






  host->origSCpnt = ((void*)0);

  printk("waiting for execution ");

  res = res_success_clear;
 } else
  printk("unknown ");

 return res;
}
