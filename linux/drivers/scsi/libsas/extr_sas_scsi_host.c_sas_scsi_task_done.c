
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct sas_task {struct domain_device* dev; struct scsi_cmnd* uldd_task; } ;
struct sas_ha_struct {int state; } ;
struct domain_device {int done_lock; TYPE_1__* port; } ;
struct TYPE_2__ {struct sas_ha_struct* ha; } ;


 int ASSIGN_SAS_TASK (struct scsi_cmnd*,int *) ;
 int SAS_HA_FROZEN ;
 int pr_debug (char*) ;
 int sas_end_task (struct scsi_cmnd*,struct sas_task*) ;
 int sas_free_task (struct sas_task*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sas_scsi_task_done(struct sas_task *task)
{
 struct scsi_cmnd *sc = task->uldd_task;
 struct domain_device *dev = task->dev;
 struct sas_ha_struct *ha = dev->port->ha;
 unsigned long flags;

 spin_lock_irqsave(&dev->done_lock, flags);
 if (test_bit(SAS_HA_FROZEN, &ha->state))
  task = ((void*)0);
 else
  ASSIGN_SAS_TASK(sc, ((void*)0));
 spin_unlock_irqrestore(&dev->done_lock, flags);

 if (unlikely(!task)) {

  pr_debug("task done but aborted\n");
  return;
 }

 if (unlikely(!sc)) {
  pr_debug("task_done called with non existing SCSI cmnd!\n");
  sas_free_task(task);
  return;
 }

 sas_end_task(sc, task);
 sc->scsi_done(sc);
}
