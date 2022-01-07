
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwq {int hrrq_slock; int irqpoll; int hrrq_online; struct afu* afu; } ;
struct afu {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LIST_HEAD (int ) ;
 scalar_t__ afu_is_irqpoll_enabled (struct afu*) ;
 int doneq ;
 int irq_poll_sched (int *) ;
 int process_cmd_doneq (int *) ;
 int process_hrrq (struct hwq*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t cxlflash_rrq_irq(int irq, void *data)
{
 struct hwq *hwq = (struct hwq *)data;
 struct afu *afu = hwq->afu;
 unsigned long hrrq_flags;
 LIST_HEAD(doneq);
 int num_entries = 0;

 spin_lock_irqsave(&hwq->hrrq_slock, hrrq_flags);


 if (!hwq->hrrq_online) {
  spin_unlock_irqrestore(&hwq->hrrq_slock, hrrq_flags);
  return IRQ_HANDLED;
 }

 if (afu_is_irqpoll_enabled(afu)) {
  irq_poll_sched(&hwq->irqpoll);
  spin_unlock_irqrestore(&hwq->hrrq_slock, hrrq_flags);
  return IRQ_HANDLED;
 }

 num_entries = process_hrrq(hwq, &doneq, -1);
 spin_unlock_irqrestore(&hwq->hrrq_slock, hrrq_flags);

 if (num_entries == 0)
  return IRQ_NONE;

 process_cmd_doneq(&doneq);
 return IRQ_HANDLED;
}
