
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int intel_gpio_irq_mask_unmask (struct irq_data*,int) ;

__attribute__((used)) static void intel_gpio_irq_unmask(struct irq_data *d)
{
 intel_gpio_irq_mask_unmask(d, 0);
}
