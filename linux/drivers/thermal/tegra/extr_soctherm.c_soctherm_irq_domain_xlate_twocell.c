
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;


 int EINVAL ;
 int const IRQ_TYPE_SENSE_MASK ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int soctherm_irq_domain_xlate_twocell(struct irq_domain *d,
 struct device_node *ctrlr, const u32 *intspec, unsigned int intsize,
 irq_hw_number_t *out_hwirq, unsigned int *out_type)
{
 if (WARN_ON(intsize < 2))
  return -EINVAL;





 *out_hwirq = intspec[0] - 1;
 *out_type = intspec[1] & IRQ_TYPE_SENSE_MASK;
 return 0;
}
