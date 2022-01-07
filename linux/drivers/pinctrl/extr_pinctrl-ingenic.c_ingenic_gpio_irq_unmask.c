
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct ingenic_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int GPIO_MSK ;
 struct ingenic_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int ingenic_gpio_set_bit (struct ingenic_gpio_chip*,int ,int ,int) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void ingenic_gpio_irq_unmask(struct irq_data *irqd)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(irqd);
 struct ingenic_gpio_chip *jzgc = gpiochip_get_data(gc);

 ingenic_gpio_set_bit(jzgc, GPIO_MSK, irqd->hwirq, 0);
}
