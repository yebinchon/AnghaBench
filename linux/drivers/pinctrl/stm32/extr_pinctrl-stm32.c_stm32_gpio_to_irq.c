
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_gpio_bank {int fwnode; } ;
struct irq_fwspec {int param_count; unsigned int* param; int fwnode; } ;
struct gpio_chip {int dummy; } ;


 unsigned int IRQ_TYPE_NONE ;
 struct stm32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int irq_create_fwspec_mapping (struct irq_fwspec*) ;

__attribute__((used)) static int stm32_gpio_to_irq(struct gpio_chip *chip, unsigned int offset)
{
 struct stm32_gpio_bank *bank = gpiochip_get_data(chip);
 struct irq_fwspec fwspec;

 fwspec.fwnode = bank->fwnode;
 fwspec.param_count = 2;
 fwspec.param[0] = offset;
 fwspec.param[1] = IRQ_TYPE_NONE;

 return irq_create_fwspec_mapping(&fwspec);
}
