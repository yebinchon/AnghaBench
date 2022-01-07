
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {scalar_t__ base; } ;


 int mtk_gpio_set (struct gpio_chip*,unsigned int,int) ;
 int pinctrl_gpio_direction_output (scalar_t__) ;

__attribute__((used)) static int mtk_gpio_direction_output(struct gpio_chip *chip, unsigned int gpio,
         int value)
{
 mtk_gpio_set(chip, gpio, value);

 return pinctrl_gpio_direction_output(chip->base + gpio);
}
