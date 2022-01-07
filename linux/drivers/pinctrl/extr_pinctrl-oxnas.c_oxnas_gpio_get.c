
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ INPUT_VALUE ;
 struct oxnas_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int oxnas_gpio_get(struct gpio_chip *chip, unsigned int offset)
{
 struct oxnas_gpio_bank *bank = gpiochip_get_data(chip);
 u32 mask = BIT(offset);

 return (readl_relaxed(bank->reg_base + INPUT_VALUE) & mask) != 0;
}
