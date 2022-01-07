
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int running; int dev; int queue_lock; scalar_t__ busy; int queue; } ;


 int EBUSY ;
 int dev_warn (int *,char*) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int spi_stop_queue(struct spi_controller *ctlr)
{
 unsigned long flags;
 unsigned limit = 500;
 int ret = 0;

 spin_lock_irqsave(&ctlr->queue_lock, flags);







 while ((!list_empty(&ctlr->queue) || ctlr->busy) && limit--) {
  spin_unlock_irqrestore(&ctlr->queue_lock, flags);
  usleep_range(10000, 11000);
  spin_lock_irqsave(&ctlr->queue_lock, flags);
 }

 if (!list_empty(&ctlr->queue) || ctlr->busy)
  ret = -EBUSY;
 else
  ctlr->running = 0;

 spin_unlock_irqrestore(&ctlr->queue_lock, flags);

 if (ret) {
  dev_warn(&ctlr->dev, "could not stop message queue\n");
  return ret;
 }
 return ret;
}
