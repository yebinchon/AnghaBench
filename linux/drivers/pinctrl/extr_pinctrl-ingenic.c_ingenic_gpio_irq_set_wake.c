
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct ingenic_gpio_chip {int irq; } ;
struct gpio_chip {int dummy; } ;


 struct ingenic_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 int irq_set_irq_wake (int ,unsigned int) ;

__attribute__((used)) static int ingenic_gpio_irq_set_wake(struct irq_data *irqd, unsigned int on)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(irqd);
 struct ingenic_gpio_chip *jzgc = gpiochip_get_data(gc);

 return irq_set_irq_wake(jzgc->irq, on);
}
