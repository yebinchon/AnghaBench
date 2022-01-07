
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {int regmap1; TYPE_1__* devdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int dir_offset; int (* spec_dir_set ) (unsigned int*,unsigned int) ;} ;


 unsigned int BIT (unsigned int) ;
 struct mtk_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int mtk_get_port (struct mtk_pinctrl*,unsigned int) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int stub1 (unsigned int*,unsigned int) ;

__attribute__((used)) static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned offset)
{
 unsigned int reg_addr;
 unsigned int bit;
 unsigned int read_val = 0;

 struct mtk_pinctrl *pctl = gpiochip_get_data(chip);

 reg_addr = mtk_get_port(pctl, offset) + pctl->devdata->dir_offset;
 bit = BIT(offset & 0xf);

 if (pctl->devdata->spec_dir_set)
  pctl->devdata->spec_dir_set(&reg_addr, offset);

 regmap_read(pctl->regmap1, reg_addr, &read_val);
 return !(read_val & bit);
}
