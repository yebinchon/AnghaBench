
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pistachio_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int GPIO_INPUT ;
 int GPIO_OUTPUT ;
 int GPIO_OUTPUT_EN ;
 int gpio_readl (struct pistachio_gpio_bank*,int ) ;
 struct pistachio_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int pistachio_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct pistachio_gpio_bank *bank = gpiochip_get_data(chip);
 u32 reg;

 if (gpio_readl(bank, GPIO_OUTPUT_EN) & BIT(offset))
  reg = GPIO_OUTPUT;
 else
  reg = GPIO_INPUT;

 return !!(gpio_readl(bank, reg) & BIT(offset));
}
