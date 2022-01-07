
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int task_state_flags; int task_state_lock; struct asd_ascb* lldd_task; } ;
struct asd_ascb {int * completion; scalar_t__ tag_valid; } ;


 int AIC94XX_SCB_TIMEOUT ;
 int ASD_DPRINTK (char*) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int SAS_TASK_STATE_DONE ;
 int TMF_RESP_FUNC_COMPLETE ;
 int TMF_RESP_FUNC_FAILED ;
 int asd_clear_nexus_index (struct sas_task*) ;
 int asd_clear_nexus_tag (struct sas_task*) ;
 int completion ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int asd_clear_nexus(struct sas_task *task)
{
 int res = TMF_RESP_FUNC_FAILED;
 int leftover;
 struct asd_ascb *tascb = task->lldd_task;
 DECLARE_COMPLETION_ONSTACK(completion);
 unsigned long flags;

 tascb->completion = &completion;

 ASD_DPRINTK("task not done, clearing nexus\n");
 if (tascb->tag_valid)
  res = asd_clear_nexus_tag(task);
 else
  res = asd_clear_nexus_index(task);
 leftover = wait_for_completion_timeout(&completion,
            AIC94XX_SCB_TIMEOUT);
 tascb->completion = ((void*)0);
 ASD_DPRINTK("came back from clear nexus\n");
 spin_lock_irqsave(&task->task_state_lock, flags);
 if (leftover < 1)
  res = TMF_RESP_FUNC_FAILED;
 if (task->task_state_flags & SAS_TASK_STATE_DONE)
  res = TMF_RESP_FUNC_COMPLETE;
 spin_unlock_irqrestore(&task->task_state_lock, flags);

 return res;
}
