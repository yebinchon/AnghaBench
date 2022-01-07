
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int msm_gpio_irq_clear_unmask (struct irq_data*,int) ;

__attribute__((used)) static void msm_gpio_irq_unmask(struct irq_data *d)
{
 msm_gpio_irq_clear_unmask(d, 0);
}
