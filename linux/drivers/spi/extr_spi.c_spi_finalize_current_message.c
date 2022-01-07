
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int context; int (* complete ) (int ) ;int * state; } ;
struct spi_controller {int cur_msg_prepared; int (* unprepare_message ) (struct spi_controller*,struct spi_message*) ;int queue_lock; int pump_messages; int kworker; struct spi_message* cur_msg; int dev; } ;


 int dev_err (int *,char*,int) ;
 int kthread_queue_work (int *,int *) ;
 int spi_unmap_msg (struct spi_controller*,struct spi_message*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct spi_controller*,struct spi_message*) ;
 int stub2 (int ) ;
 int trace_spi_message_done (struct spi_message*) ;

void spi_finalize_current_message(struct spi_controller *ctlr)
{
 struct spi_message *mesg;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ctlr->queue_lock, flags);
 mesg = ctlr->cur_msg;
 spin_unlock_irqrestore(&ctlr->queue_lock, flags);

 spi_unmap_msg(ctlr, mesg);

 if (ctlr->cur_msg_prepared && ctlr->unprepare_message) {
  ret = ctlr->unprepare_message(ctlr, mesg);
  if (ret) {
   dev_err(&ctlr->dev, "failed to unprepare message: %d\n",
    ret);
  }
 }

 spin_lock_irqsave(&ctlr->queue_lock, flags);
 ctlr->cur_msg = ((void*)0);
 ctlr->cur_msg_prepared = 0;
 kthread_queue_work(&ctlr->kworker, &ctlr->pump_messages);
 spin_unlock_irqrestore(&ctlr->queue_lock, flags);

 trace_spi_message_done(mesg);

 mesg->state = ((void*)0);
 if (mesg->complete)
  mesg->complete(mesg->context);
}
