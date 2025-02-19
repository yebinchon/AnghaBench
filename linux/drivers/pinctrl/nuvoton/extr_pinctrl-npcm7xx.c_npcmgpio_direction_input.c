
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm7xx_gpio {int (* direction_input ) (struct gpio_chip*,unsigned int) ;} ;
struct gpio_chip {scalar_t__ base; } ;


 struct npcm7xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_direction_input (scalar_t__) ;
 int stub1 (struct gpio_chip*,unsigned int) ;

__attribute__((used)) static int npcmgpio_direction_input(struct gpio_chip *chip, unsigned int offset)
{
 struct npcm7xx_gpio *bank = gpiochip_get_data(chip);
 int ret;

 ret = pinctrl_gpio_direction_input(offset + chip->base);
 if (ret)
  return ret;

 return bank->direction_input(chip, offset);
}
