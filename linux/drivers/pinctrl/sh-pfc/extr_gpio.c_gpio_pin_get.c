
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_pfc_gpio_data_reg {TYPE_1__* info; } ;
struct sh_pfc_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int reg_width; } ;


 int gpio_get_data_reg (struct sh_pfc_chip*,unsigned int,struct sh_pfc_gpio_data_reg**,unsigned int*) ;
 unsigned int gpio_read_data_reg (struct sh_pfc_chip*,TYPE_1__*) ;
 struct sh_pfc_chip* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static int gpio_pin_get(struct gpio_chip *gc, unsigned offset)
{
 struct sh_pfc_chip *chip = gpiochip_get_data(gc);
 struct sh_pfc_gpio_data_reg *reg;
 unsigned int bit;
 unsigned int pos;

 gpio_get_data_reg(chip, offset, &reg, &bit);

 pos = reg->info->reg_width - (bit + 1);

 return (gpio_read_data_reg(chip, reg->info) >> pos) & 1;
}
