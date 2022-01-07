
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* intc_prio_level ;

unsigned int intc_get_prio_level(unsigned int irq)
{
 return intc_prio_level[irq];
}
