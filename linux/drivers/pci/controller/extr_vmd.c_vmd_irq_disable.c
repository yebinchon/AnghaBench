
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmd_irq {int enabled; int node; } ;
struct irq_data {TYPE_1__* chip; struct vmd_irq* chip_data; } ;
struct TYPE_2__ {int (* irq_mask ) (struct irq_data*) ;} ;


 int list_del_rcu (int *) ;
 int list_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void vmd_irq_disable(struct irq_data *data)
{
 struct vmd_irq *vmdirq = data->chip_data;
 unsigned long flags;

 data->chip->irq_mask(data);

 raw_spin_lock_irqsave(&list_lock, flags);
 if (vmdirq->enabled) {
  list_del_rcu(&vmdirq->node);
  vmdirq->enabled = 0;
 }
 raw_spin_unlock_irqrestore(&list_lock, flags);
}
