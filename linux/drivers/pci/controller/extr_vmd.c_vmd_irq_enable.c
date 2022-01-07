
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmd_irq {int enabled; TYPE_2__* irq; int node; } ;
struct irq_data {TYPE_1__* chip; struct vmd_irq* chip_data; } ;
struct TYPE_4__ {int irq_list; } ;
struct TYPE_3__ {int (* irq_unmask ) (struct irq_data*) ;} ;


 int WARN_ON (int) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void vmd_irq_enable(struct irq_data *data)
{
 struct vmd_irq *vmdirq = data->chip_data;
 unsigned long flags;

 raw_spin_lock_irqsave(&list_lock, flags);
 WARN_ON(vmdirq->enabled);
 list_add_tail_rcu(&vmdirq->node, &vmdirq->irq->irq_list);
 vmdirq->enabled = 1;
 raw_spin_unlock_irqrestore(&list_lock, flags);

 data->chip->irq_unmask(data);
}
