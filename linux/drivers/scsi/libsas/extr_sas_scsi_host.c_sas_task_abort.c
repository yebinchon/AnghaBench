
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int request; } ;
struct TYPE_3__ {int (* function ) (TYPE_1__*) ;} ;
struct sas_task_slow {TYPE_1__ timer; } ;
struct sas_task {int dev; struct sas_task_slow* slow_task; struct scsi_cmnd* uldd_task; } ;


 int blk_abort_request (int ) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ dev_is_sata (int ) ;
 int sas_ata_task_abort (struct sas_task*) ;
 int stub1 (TYPE_1__*) ;

void sas_task_abort(struct sas_task *task)
{
 struct scsi_cmnd *sc = task->uldd_task;


 if (!sc) {
  struct sas_task_slow *slow = task->slow_task;

  if (!slow)
   return;
  if (!del_timer(&slow->timer))
   return;
  slow->timer.function(&slow->timer);
  return;
 }

 if (dev_is_sata(task->dev))
  sas_ata_task_abort(task);
 else
  blk_abort_request(sc->request);
}
