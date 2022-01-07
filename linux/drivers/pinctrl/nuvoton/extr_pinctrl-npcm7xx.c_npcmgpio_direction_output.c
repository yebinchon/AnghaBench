
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm7xx_gpio {int (* direction_output ) (struct gpio_chip*,unsigned int,int) ;} ;
struct gpio_chip {scalar_t__ base; int parent; } ;


 int dev_dbg (int ,char*,unsigned int,int) ;
 struct npcm7xx_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_direction_output (scalar_t__) ;
 int stub1 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static int npcmgpio_direction_output(struct gpio_chip *chip,
         unsigned int offset, int value)
{
 struct npcm7xx_gpio *bank = gpiochip_get_data(chip);
 int ret;

 dev_dbg(chip->parent, "gpio_direction_output: offset%d = %x\n", offset,
  value);

 ret = pinctrl_gpio_direction_output(offset + chip->base);
 if (ret)
  return ret;

 return bank->direction_output(chip, offset, value);
}
