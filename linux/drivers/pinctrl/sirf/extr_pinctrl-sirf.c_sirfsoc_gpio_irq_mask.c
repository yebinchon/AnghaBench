
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_gpio_chip {int dummy; } ;
struct sirfsoc_gpio_bank {int dummy; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;


 int SIRFSOC_GPIO_BANK_SIZE ;
 int __sirfsoc_gpio_irq_mask (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,int) ;
 struct sirfsoc_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 struct gpio_chip* irq_data_get_irq_chip_data (struct irq_data*) ;
 struct sirfsoc_gpio_bank* sirfsoc_gpio_to_bank (struct sirfsoc_gpio_chip*,int) ;

__attribute__((used)) static void sirfsoc_gpio_irq_mask(struct irq_data *d)
{
 struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
 struct sirfsoc_gpio_chip *sgpio = gpiochip_get_data(gc);
 struct sirfsoc_gpio_bank *bank = sirfsoc_gpio_to_bank(sgpio, d->hwirq);

 __sirfsoc_gpio_irq_mask(sgpio, bank, d->hwirq % SIRFSOC_GPIO_BANK_SIZE);
}
