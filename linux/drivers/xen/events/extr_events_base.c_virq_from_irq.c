
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int virq; } ;
struct irq_info {scalar_t__ type; TYPE_1__ u; } ;


 int BUG_ON (int) ;
 scalar_t__ IRQT_VIRQ ;
 struct irq_info* info_for_irq (unsigned int) ;

__attribute__((used)) static unsigned virq_from_irq(unsigned irq)
{
 struct irq_info *info = info_for_irq(irq);

 BUG_ON(info == ((void*)0));
 BUG_ON(info->type != IRQT_VIRQ);

 return info->u.virq;
}
