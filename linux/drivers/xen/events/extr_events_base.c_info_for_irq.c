
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {int dummy; } ;


 struct irq_info* irq_get_handler_data (unsigned int) ;

struct irq_info *info_for_irq(unsigned irq)
{
 return irq_get_handler_data(irq);
}
