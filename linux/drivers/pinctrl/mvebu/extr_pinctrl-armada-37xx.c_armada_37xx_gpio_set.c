
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int regmap; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int OUTPUT_VAL ;
 int armada_37xx_update_reg (unsigned int*,unsigned int*) ;
 struct armada_37xx_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void armada_37xx_gpio_set(struct gpio_chip *chip, unsigned int offset,
     int value)
{
 struct armada_37xx_pinctrl *info = gpiochip_get_data(chip);
 unsigned int reg = OUTPUT_VAL;
 unsigned int mask, val;

 armada_37xx_update_reg(&reg, &offset);
 mask = BIT(offset);
 val = value ? mask : 0;

 regmap_update_bits(info->regmap, reg, mask, val);
}
