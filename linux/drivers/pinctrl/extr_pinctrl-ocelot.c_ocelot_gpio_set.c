
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_pinctrl {int map; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int OCELOT_GPIO_OUT_CLR ;
 int OCELOT_GPIO_OUT_SET ;
 int REG (int ,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void ocelot_gpio_set(struct gpio_chip *chip, unsigned int offset,
       int value)
{
 struct ocelot_pinctrl *info = gpiochip_get_data(chip);

 if (value)
  regmap_write(info->map, REG(OCELOT_GPIO_OUT_SET, info, offset),
        BIT(offset % 32));
 else
  regmap_write(info->map, REG(OCELOT_GPIO_OUT_CLR, info, offset),
        BIT(offset % 32));
}
