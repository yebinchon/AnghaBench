
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_status_struct {int open_rej_reason; int stat; int resp; } ;
struct sas_task {int task_state_flags; int (* task_done ) (struct sas_task*) ;int task_state_lock; struct task_status_struct task_status; } ;
struct pm8001_hba_info {int lock; int devices; struct pm8001_ccb_info* ccb_info; } ;
struct pm8001_device {scalar_t__ dev_type; int running_req; } ;
struct pm8001_ccb_info {int ccb_tag; struct sas_task* task; struct pm8001_device* device; } ;


 int PM8001_MAX_CCB ;
 uintptr_t PM8001_MAX_DEVICES ;
 int SAS_OPEN_REJECT ;
 int SAS_OREJ_RSVD_RETRY ;
 scalar_t__ SAS_PHY_UNUSED ;
 int SAS_TASK_AT_INITIATOR ;
 int SAS_TASK_COMPLETE ;
 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int SAS_TASK_STATE_PENDING ;
 int mb () ;
 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sas_task*) ;
 scalar_t__ unlikely (int) ;

void pm8001_open_reject_retry(
 struct pm8001_hba_info *pm8001_ha,
 struct sas_task *task_to_close,
 struct pm8001_device *device_to_close)
{
 int i;
 unsigned long flags;

 if (pm8001_ha == ((void*)0))
  return;

 spin_lock_irqsave(&pm8001_ha->lock, flags);

 for (i = 0; i < PM8001_MAX_CCB; i++) {
  struct sas_task *task;
  struct task_status_struct *ts;
  struct pm8001_device *pm8001_dev;
  unsigned long flags1;
  u32 tag;
  struct pm8001_ccb_info *ccb = &pm8001_ha->ccb_info[i];

  pm8001_dev = ccb->device;
  if (!pm8001_dev || (pm8001_dev->dev_type == SAS_PHY_UNUSED))
   continue;
  if (!device_to_close) {
   uintptr_t d = (uintptr_t)pm8001_dev
     - (uintptr_t)&pm8001_ha->devices;
   if (((d % sizeof(*pm8001_dev)) != 0)
    || ((d / sizeof(*pm8001_dev)) >= PM8001_MAX_DEVICES))
    continue;
  } else if (pm8001_dev != device_to_close)
   continue;
  tag = ccb->ccb_tag;
  if (!tag || (tag == 0xFFFFFFFF))
   continue;
  task = ccb->task;
  if (!task || !task->task_done)
   continue;
  if (task_to_close && (task != task_to_close))
   continue;
  ts = &task->task_status;
  ts->resp = SAS_TASK_COMPLETE;

  ts->stat = SAS_OPEN_REJECT;
  ts->open_rej_reason = SAS_OREJ_RSVD_RETRY;
  if (pm8001_dev)
   pm8001_dev->running_req--;
  spin_lock_irqsave(&task->task_state_lock, flags1);
  task->task_state_flags &= ~SAS_TASK_STATE_PENDING;
  task->task_state_flags &= ~SAS_TASK_AT_INITIATOR;
  task->task_state_flags |= SAS_TASK_STATE_DONE;
  if (unlikely((task->task_state_flags
    & SAS_TASK_STATE_ABORTED))) {
   spin_unlock_irqrestore(&task->task_state_lock,
    flags1);
   pm8001_ccb_task_free(pm8001_ha, task, ccb, tag);
  } else {
   spin_unlock_irqrestore(&task->task_state_lock,
    flags1);
   pm8001_ccb_task_free(pm8001_ha, task, ccb, tag);
   mb();
   spin_unlock_irqrestore(&pm8001_ha->lock, flags);
   task->task_done(task);
   spin_lock_irqsave(&pm8001_ha->lock, flags);
  }
 }

 spin_unlock_irqrestore(&pm8001_ha->lock, flags);
}
