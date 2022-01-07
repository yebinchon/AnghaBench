
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvscsi_adapter {int hw_lock; int work; int workqueue; scalar_t__ use_msg; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ pvscsi_msg_pending (struct pvscsi_adapter*) ;
 int pvscsi_process_completion_ring (struct pvscsi_adapter*) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pvscsi_isr(int irq, void *devp)
{
 struct pvscsi_adapter *adapter = devp;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 pvscsi_process_completion_ring(adapter);
 if (adapter->use_msg && pvscsi_msg_pending(adapter))
  queue_work(adapter->workqueue, &adapter->work);
 spin_unlock_irqrestore(&adapter->hw_lock, flags);

 return IRQ_HANDLED;
}
