
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_gpio_bank {int dummy; } ;
struct irq_fwspec {int param_count; int * param; int fwnode; } ;
struct irq_domain {TYPE_1__* parent; struct stm32_gpio_bank* host_data; } ;
typedef int irq_hw_number_t ;
struct TYPE_2__ {int fwnode; } ;


 int irq_domain_alloc_irqs_parent (struct irq_domain*,unsigned int,unsigned int,struct irq_fwspec*) ;
 int irq_domain_set_hwirq_and_chip (struct irq_domain*,unsigned int,int ,int *,struct stm32_gpio_bank*) ;
 int stm32_gpio_irq_chip ;

__attribute__((used)) static int stm32_gpio_domain_alloc(struct irq_domain *d,
       unsigned int virq,
       unsigned int nr_irqs, void *data)
{
 struct stm32_gpio_bank *bank = d->host_data;
 struct irq_fwspec *fwspec = data;
 struct irq_fwspec parent_fwspec;
 irq_hw_number_t hwirq;

 hwirq = fwspec->param[0];
 parent_fwspec.fwnode = d->parent->fwnode;
 parent_fwspec.param_count = 2;
 parent_fwspec.param[0] = fwspec->param[0];
 parent_fwspec.param[1] = fwspec->param[1];

 irq_domain_set_hwirq_and_chip(d, virq, hwirq, &stm32_gpio_irq_chip,
          bank);

 return irq_domain_alloc_irqs_parent(d, virq, nr_irqs, &parent_fwspec);
}
