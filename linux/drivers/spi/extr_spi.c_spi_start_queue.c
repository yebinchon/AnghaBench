
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int running; int pump_messages; int kworker; int queue_lock; int * cur_msg; scalar_t__ busy; } ;


 int EBUSY ;
 int kthread_queue_work (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int spi_start_queue(struct spi_controller *ctlr)
{
 unsigned long flags;

 spin_lock_irqsave(&ctlr->queue_lock, flags);

 if (ctlr->running || ctlr->busy) {
  spin_unlock_irqrestore(&ctlr->queue_lock, flags);
  return -EBUSY;
 }

 ctlr->running = 1;
 ctlr->cur_msg = ((void*)0);
 spin_unlock_irqrestore(&ctlr->queue_lock, flags);

 kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);

 return 0;
}
