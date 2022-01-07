
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* devdata; } ;
struct TYPE_2__ {unsigned int dir_offset; int (* spec_dir_set ) (unsigned int*,unsigned int) ;} ;


 unsigned int BIT (unsigned int) ;
 unsigned int CLR_ADDR (unsigned int,struct mtk_pinctrl*) ;
 unsigned int SET_ADDR (unsigned int,struct mtk_pinctrl*) ;
 unsigned int mtk_get_port (struct mtk_pinctrl*,unsigned int) ;
 int mtk_get_regmap (struct mtk_pinctrl*,unsigned int) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;
 int stub1 (unsigned int*,unsigned int) ;

__attribute__((used)) static int mtk_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
   struct pinctrl_gpio_range *range, unsigned offset,
   bool input)
{
 unsigned int reg_addr;
 unsigned int bit;
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 reg_addr = mtk_get_port(pctl, offset) + pctl->devdata->dir_offset;
 bit = BIT(offset & 0xf);

 if (pctl->devdata->spec_dir_set)
  pctl->devdata->spec_dir_set(&reg_addr, offset);

 if (input)

  reg_addr = CLR_ADDR(reg_addr, pctl);
 else
  reg_addr = SET_ADDR(reg_addr, pctl);

 regmap_write(mtk_get_regmap(pctl, offset), reg_addr, bit);
 return 0;
}
