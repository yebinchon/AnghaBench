
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcs_struct {int lock; int todo_mask; int vdev; } ;
typedef int irqreturn_t ;


 int HVCS_SCHED_READ ;
 int IRQ_HANDLED ;
 int hvcs_kick () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vio_disable_interrupts (int ) ;

__attribute__((used)) static irqreturn_t hvcs_handle_interrupt(int irq, void *dev_instance)
{
 struct hvcs_struct *hvcsd = dev_instance;

 spin_lock(&hvcsd->lock);
 vio_disable_interrupts(hvcsd->vdev);
 hvcsd->todo_mask |= HVCS_SCHED_READ;
 spin_unlock(&hvcsd->lock);
 hvcs_kick();

 return IRQ_HANDLED;
}
