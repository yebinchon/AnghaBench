
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intc_desc_int {int dummy; } ;
struct TYPE_2__ {int mask_regs; } ;
struct intc_desc {TYPE_1__ hw; } ;
typedef int intc_enum ;


 int * dist_handle ;
 int intc_big_lock ;
 int intc_dist_data (struct intc_desc*,struct intc_desc_int*,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void intc_set_dist_handle(unsigned int irq, struct intc_desc *desc,
     struct intc_desc_int *d, intc_enum id)
{
 unsigned long flags;




 if (!desc->hw.mask_regs)
  return;

 raw_spin_lock_irqsave(&intc_big_lock, flags);
 dist_handle[irq] = intc_dist_data(desc, d, id);
 raw_spin_unlock_irqrestore(&intc_big_lock, flags);
}
