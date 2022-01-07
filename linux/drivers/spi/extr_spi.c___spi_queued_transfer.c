
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int queue; int status; scalar_t__ actual_length; } ;
struct spi_device {struct spi_controller* controller; } ;
struct spi_controller {int queue_lock; int pump_messages; int kworker; int busy; int queue; int running; } ;


 int EINPROGRESS ;
 int ESHUTDOWN ;
 int kthread_queue_work (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int __spi_queued_transfer(struct spi_device *spi,
     struct spi_message *msg,
     bool need_pump)
{
 struct spi_controller *ctlr = spi->controller;
 unsigned long flags;

 spin_lock_irqsave(&ctlr->queue_lock, flags);

 if (!ctlr->running) {
  spin_unlock_irqrestore(&ctlr->queue_lock, flags);
  return -ESHUTDOWN;
 }
 msg->actual_length = 0;
 msg->status = -EINPROGRESS;

 list_add_tail(&msg->queue, &ctlr->queue);
 if (!ctlr->busy && need_pump)
  kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);

 spin_unlock_irqrestore(&ctlr->queue_lock, flags);
 return 0;
}
