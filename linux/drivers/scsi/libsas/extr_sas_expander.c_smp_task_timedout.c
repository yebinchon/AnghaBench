
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sas_task_slow {struct sas_task* task; } ;
struct sas_task {int task_state_flags; int task_state_lock; TYPE_1__* slow_task; } ;
struct TYPE_2__ {int completion; } ;


 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int complete (int *) ;
 struct sas_task_slow* from_timer (int ,struct timer_list*,int ) ;
 struct sas_task_slow* slow ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void smp_task_timedout(struct timer_list *t)
{
 struct sas_task_slow *slow = from_timer(slow, t, timer);
 struct sas_task *task = slow->task;
 unsigned long flags;

 spin_lock_irqsave(&task->task_state_lock, flags);
 if (!(task->task_state_flags & SAS_TASK_STATE_DONE)) {
  task->task_state_flags |= SAS_TASK_STATE_ABORTED;
  complete(&task->slow_task->completion);
 }
 spin_unlock_irqrestore(&task->task_state_lock, flags);
}
