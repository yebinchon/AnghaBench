
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_pinctrl {int map; } ;
struct gpio_chip {scalar_t__ base; } ;


 unsigned int BIT (unsigned int) ;
 int OCELOT_GPIO_OUT_CLR ;
 int OCELOT_GPIO_OUT_SET ;
 int REG (int ,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int pinctrl_gpio_direction_output (scalar_t__) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int ocelot_gpio_direction_output(struct gpio_chip *chip,
     unsigned int offset, int value)
{
 struct ocelot_pinctrl *info = gpiochip_get_data(chip);
 unsigned int pin = BIT(offset % 32);

 if (value)
  regmap_write(info->map, REG(OCELOT_GPIO_OUT_SET, info, offset),
        pin);
 else
  regmap_write(info->map, REG(OCELOT_GPIO_OUT_CLR, info, offset),
        pin);

 return pinctrl_gpio_direction_output(chip->base + offset);
}
