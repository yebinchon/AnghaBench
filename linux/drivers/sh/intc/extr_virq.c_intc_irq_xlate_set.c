
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intc_desc_int {int dummy; } ;
typedef int intc_enum ;
struct TYPE_2__ {struct intc_desc_int* desc; int enum_id; } ;


 int intc_big_lock ;
 TYPE_1__* intc_irq_xlate ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void intc_irq_xlate_set(unsigned int irq, intc_enum id, struct intc_desc_int *d)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&intc_big_lock, flags);
 intc_irq_xlate[irq].enum_id = id;
 intc_irq_xlate[irq].desc = d;
 raw_spin_unlock_irqrestore(&intc_big_lock, flags);
}
