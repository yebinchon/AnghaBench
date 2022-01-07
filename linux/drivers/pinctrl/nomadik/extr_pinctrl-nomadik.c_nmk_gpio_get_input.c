
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {int clk; scalar_t__ addr; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ NMK_GPIO_DAT ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct nmk_gpio_chip* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int nmk_gpio_get_input(struct gpio_chip *chip, unsigned offset)
{
 struct nmk_gpio_chip *nmk_chip = gpiochip_get_data(chip);
 int value;

 clk_enable(nmk_chip->clk);

 value = !!(readl(nmk_chip->addr + NMK_GPIO_DAT) & BIT(offset));

 clk_disable(nmk_chip->clk);

 return value;
}
