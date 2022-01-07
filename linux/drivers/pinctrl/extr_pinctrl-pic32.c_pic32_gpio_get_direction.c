
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ TRIS_REG ;
 struct pic32_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int pic32_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 struct pic32_gpio_bank *bank = gpiochip_get_data(chip);

 return !!(readl(bank->reg_base + TRIS_REG) & BIT(offset));
}
