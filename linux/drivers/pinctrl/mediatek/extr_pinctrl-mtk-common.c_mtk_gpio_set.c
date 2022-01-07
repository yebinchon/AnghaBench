
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {unsigned int dout_offset; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int CLR_ADDR (unsigned int,struct mtk_pinctrl*) ;
 unsigned int SET_ADDR (unsigned int,struct mtk_pinctrl*) ;
 struct mtk_pinctrl* gpiochip_get_data (struct gpio_chip*) ;
 unsigned int mtk_get_port (struct mtk_pinctrl*,unsigned int) ;
 int mtk_get_regmap (struct mtk_pinctrl*,unsigned int) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void mtk_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 unsigned int reg_addr;
 unsigned int bit;
 struct mtk_pinctrl *pctl = gpiochip_get_data(chip);

 reg_addr = mtk_get_port(pctl, offset) + pctl->devdata->dout_offset;
 bit = BIT(offset & 0xf);

 if (value)
  reg_addr = SET_ADDR(reg_addr, pctl);
 else
  reg_addr = CLR_ADDR(reg_addr, pctl);

 regmap_write(mtk_get_regmap(pctl, offset), reg_addr, bit);
}
