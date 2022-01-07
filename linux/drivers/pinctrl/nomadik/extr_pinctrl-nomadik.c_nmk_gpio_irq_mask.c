
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int nmk_gpio_irq_maskunmask (struct irq_data*,int) ;

__attribute__((used)) static void nmk_gpio_irq_mask(struct irq_data *d)
{
 nmk_gpio_irq_maskunmask(d, 0);
}
