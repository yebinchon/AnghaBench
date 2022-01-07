
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long IRQS_PER_IDX ;
 unsigned long NR_HW_IRQS ;

__attribute__((used)) static u32 hwirq_to_reg_set(unsigned long hwirq)
{
 return (hwirq / (NR_HW_IRQS * IRQS_PER_IDX));
}
