
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_range_info {unsigned int queue_base; int flags; TYPE_1__* irqs; } ;
struct knav_queue_inst {unsigned int id; struct knav_range_info* range; } ;
struct TYPE_2__ {int irq; } ;


 int RANGE_HAS_IRQ ;
 int free_irq (int,struct knav_queue_inst*) ;
 int irq_set_affinity_hint (int,int *) ;

__attribute__((used)) static void knav_queue_free_irq(struct knav_queue_inst *inst)
{
 struct knav_range_info *range = inst->range;
 unsigned queue = inst->id - inst->range->queue_base;
 int irq;

 if (range->flags & RANGE_HAS_IRQ) {
  irq = range->irqs[queue].irq;
  irq_set_affinity_hint(irq, ((void*)0));
  free_irq(irq, inst);
 }
}
