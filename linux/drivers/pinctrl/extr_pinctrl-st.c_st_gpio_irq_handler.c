
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __gpio_irq_handler (struct st_gpio_bank*) ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 struct st_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;

__attribute__((used)) static void st_gpio_irq_handler(struct irq_desc *desc)
{

 struct irq_chip *chip = irq_desc_get_chip(desc);
 struct gpio_chip *gc = irq_desc_get_handler_data(desc);
 struct st_gpio_bank *bank = gpiochip_get_data(gc);

 chained_irq_enter(chip, desc);
 __gpio_irq_handler(bank);
 chained_irq_exit(chip, desc);
}
