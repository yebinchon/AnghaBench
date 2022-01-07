
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;


 int lochnagar_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int pinctrl_gpio_direction_output (scalar_t__) ;

__attribute__((used)) static int lochnagar_gpio_direction_out(struct gpio_chip *chip,
     unsigned int offset, int value)
{
 lochnagar_gpio_set(chip, offset, value);

 return pinctrl_gpio_direction_output(chip->base + offset);
}
