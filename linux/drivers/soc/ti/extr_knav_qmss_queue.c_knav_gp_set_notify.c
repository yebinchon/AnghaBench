
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_range_info {int flags; unsigned int queue_base; TYPE_1__* irqs; } ;
struct knav_queue_inst {unsigned int id; } ;
struct TYPE_2__ {int irq; } ;


 int RANGE_HAS_IRQ ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static int knav_gp_set_notify(struct knav_range_info *range,
          struct knav_queue_inst *inst,
          bool enabled)
{
 unsigned queue;

 if (range->flags & RANGE_HAS_IRQ) {
  queue = inst->id - range->queue_base;
  if (enabled)
   enable_irq(range->irqs[queue].irq);
  else
   disable_irq_nosync(range->irqs[queue].irq);
 }
 return 0;
}
