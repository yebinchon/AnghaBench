
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int free_irq (unsigned int,void*) ;
 struct irq_info* irq_get_handler_data (unsigned int) ;
 int unbind_from_irq (unsigned int) ;

void unbind_from_irqhandler(unsigned int irq, void *dev_id)
{
 struct irq_info *info = irq_get_handler_data(irq);

 if (WARN_ON(!info))
  return;
 free_irq(irq, dev_id);
 unbind_from_irq(irq);
}
