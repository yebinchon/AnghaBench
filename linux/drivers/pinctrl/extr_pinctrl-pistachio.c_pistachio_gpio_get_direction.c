
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int GPIO_OUTPUT_EN ;
 int gpio_readl (struct pistachio_gpio_bank*,int ) ;
 struct pistachio_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int pistachio_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct pistachio_gpio_bank *bank = gpiochip_get_data(chip);

 return !(gpio_readl(bank, GPIO_OUTPUT_EN) & BIT(offset));
}
