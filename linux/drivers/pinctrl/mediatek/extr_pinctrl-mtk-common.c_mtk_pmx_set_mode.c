
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_2__ {unsigned long port_shf; unsigned long pinmux_offset; int (* spec_pinmux_set ) (int ,unsigned long,unsigned long) ;} ;


 long GPIO_MODE_BITS ;
 unsigned long MAX_GPIO_MODE_PER_REG ;
 int mtk_get_regmap (struct mtk_pinctrl*,unsigned long) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;
 int stub1 (int ,unsigned long,unsigned long) ;

__attribute__((used)) static int mtk_pmx_set_mode(struct pinctrl_dev *pctldev,
  unsigned long pin, unsigned long mode)
{
 unsigned int reg_addr;
 unsigned char bit;
 unsigned int val;
 unsigned int mask = (1L << GPIO_MODE_BITS) - 1;
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 if (pctl->devdata->spec_pinmux_set)
  pctl->devdata->spec_pinmux_set(mtk_get_regmap(pctl, pin),
     pin, mode);

 reg_addr = ((pin / MAX_GPIO_MODE_PER_REG) << pctl->devdata->port_shf)
   + pctl->devdata->pinmux_offset;

 mode &= mask;
 bit = pin % MAX_GPIO_MODE_PER_REG;
 mask <<= (GPIO_MODE_BITS * bit);
 val = (mode << (GPIO_MODE_BITS * bit));
 return regmap_update_bits(mtk_get_regmap(pctl, pin),
   reg_addr, mask, val);
}
