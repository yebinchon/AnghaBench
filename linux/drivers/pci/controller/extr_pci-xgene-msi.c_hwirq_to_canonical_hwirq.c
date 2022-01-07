
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long hwirq_to_cpu (unsigned long) ;

__attribute__((used)) static unsigned long hwirq_to_canonical_hwirq(unsigned long hwirq)
{
 return (hwirq - hwirq_to_cpu(hwirq));
}
