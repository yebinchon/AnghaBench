
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int gpiochip_unlock_as_irq (struct gpio_chip*,int ) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void st_gpio_irq_release_resources(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);

 gpiochip_unlock_as_irq(gc, d->hwirq);
}
