
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 unsigned int IRQ_TYPE_NONE ;
 scalar_t__ WARN_ON (int) ;
 unsigned long evt2irq (int const) ;

__attribute__((used)) static int intc_evt_xlate(struct irq_domain *d, struct device_node *ctrlr,
     const u32 *intspec, unsigned int intsize,
     unsigned long *out_hwirq, unsigned int *out_type)
{
 if (WARN_ON(intsize < 1))
  return -EINVAL;

 *out_hwirq = evt2irq(intspec[0]);
 *out_type = IRQ_TYPE_NONE;

 return 0;
}
