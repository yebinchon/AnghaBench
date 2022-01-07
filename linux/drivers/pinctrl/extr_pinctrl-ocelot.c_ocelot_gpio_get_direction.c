
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocelot_pinctrl {int map; } ;
struct gpio_chip {int dummy; } ;


 unsigned int BIT (unsigned int) ;
 int OCELOT_GPIO_OE ;
 int REG (int ,struct ocelot_pinctrl*,unsigned int) ;
 struct ocelot_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ocelot_gpio_get_direction(struct gpio_chip *chip,
         unsigned int offset)
{
 struct ocelot_pinctrl *info = gpiochip_get_data(chip);
 unsigned int val;

 regmap_read(info->map, REG(OCELOT_GPIO_OE, info, offset), &val);

 return !(val & BIT(offset % 32));
}
