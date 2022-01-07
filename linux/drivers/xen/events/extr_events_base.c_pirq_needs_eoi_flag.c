
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ pirq; } ;
struct irq_info {scalar_t__ type; TYPE_2__ u; } ;


 int BUG_ON (int) ;
 scalar_t__ IRQT_PIRQ ;
 int PIRQ_NEEDS_EOI ;
 struct irq_info* info_for_irq (unsigned int) ;

__attribute__((used)) static bool pirq_needs_eoi_flag(unsigned irq)
{
 struct irq_info *info = info_for_irq(irq);
 BUG_ON(info->type != IRQT_PIRQ);

 return info->u.pirq.flags & PIRQ_NEEDS_EOI;
}
