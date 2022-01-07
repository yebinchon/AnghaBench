
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_hba {unsigned long last_ramp_down_time; TYPE_1__* pport; int hbalock; void* last_rsrc_error_time; int num_rsrc_err; } ;
struct TYPE_2__ {int work_port_events; int work_port_lock; } ;


 unsigned long QUEUE_RAMP_DOWN_INTERVAL ;
 int WORKER_RAMP_DOWN_QUEUE ;
 int atomic_inc (int *) ;
 void* jiffies ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,void*) ;

void
lpfc_rampdown_queue_depth(struct lpfc_hba *phba)
{
 unsigned long flags;
 uint32_t evt_posted;
 unsigned long expires;

 spin_lock_irqsave(&phba->hbalock, flags);
 atomic_inc(&phba->num_rsrc_err);
 phba->last_rsrc_error_time = jiffies;

 expires = phba->last_ramp_down_time + QUEUE_RAMP_DOWN_INTERVAL;
 if (time_after(expires, jiffies)) {
  spin_unlock_irqrestore(&phba->hbalock, flags);
  return;
 }

 phba->last_ramp_down_time = jiffies;

 spin_unlock_irqrestore(&phba->hbalock, flags);

 spin_lock_irqsave(&phba->pport->work_port_lock, flags);
 evt_posted = phba->pport->work_port_events & WORKER_RAMP_DOWN_QUEUE;
 if (!evt_posted)
  phba->pport->work_port_events |= WORKER_RAMP_DOWN_QUEUE;
 spin_unlock_irqrestore(&phba->pport->work_port_lock, flags);

 if (!evt_posted)
  lpfc_worker_wake_up(phba);
 return;
}
