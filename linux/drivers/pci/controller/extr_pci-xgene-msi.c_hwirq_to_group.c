
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long NR_HW_IRQS ;

__attribute__((used)) static u32 hwirq_to_group(unsigned long hwirq)
{
 return (hwirq % NR_HW_IRQS);
}
