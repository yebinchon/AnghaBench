
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 scalar_t__ REG_PIO_PIN ;
 struct st_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int st_gpio_get(struct gpio_chip *chip, unsigned offset)
{
 struct st_gpio_bank *bank = gpiochip_get_data(chip);

 return !!(readl(bank->base + REG_PIO_PIN) & BIT(offset));
}
