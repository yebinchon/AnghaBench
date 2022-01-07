
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intc_map_entry {int dummy; } ;


 struct intc_map_entry* intc_irq_xlate ;

struct intc_map_entry *intc_irq_xlate_get(unsigned int irq)
{
 return intc_irq_xlate + irq;
}
