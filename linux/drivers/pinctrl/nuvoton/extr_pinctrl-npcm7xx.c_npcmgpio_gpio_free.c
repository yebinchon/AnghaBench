
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; int parent; } ;


 int dev_dbg (int ,char*,unsigned int) ;
 int pinctrl_gpio_free (scalar_t__) ;

__attribute__((used)) static void npcmgpio_gpio_free(struct gpio_chip *chip, unsigned int offset)
{
 dev_dbg(chip->parent, "gpio_free: offset%d\n", offset);
 pinctrl_gpio_free(offset + chip->base);
}
