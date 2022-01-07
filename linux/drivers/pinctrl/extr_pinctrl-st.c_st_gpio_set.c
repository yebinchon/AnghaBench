
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_gpio_bank {int dummy; } ;
struct gpio_chip {int dummy; } ;


 int __st_gpio_set (struct st_gpio_bank*,unsigned int,int) ;
 struct st_gpio_bank* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void st_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct st_gpio_bank *bank = gpiochip_get_data(chip);
 __st_gpio_set(bank, offset, value);
}
