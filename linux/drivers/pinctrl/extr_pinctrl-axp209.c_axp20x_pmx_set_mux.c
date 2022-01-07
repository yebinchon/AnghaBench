
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_1__* funcs; TYPE_2__* desc; } ;
struct TYPE_4__ {unsigned int ldo_mask; unsigned int adc_mask; } ;
struct TYPE_3__ {int muxval; } ;


 unsigned int AXP20X_FUNC_GPIO_IN ;
 unsigned int AXP20X_FUNC_LDO ;
 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 int axp20x_pmx_set (struct pinctrl_dev*,unsigned int,int ) ;
 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int axp20x_pmx_set_mux(struct pinctrl_dev *pctldev,
         unsigned int function, unsigned int group)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);
 unsigned int mask;


 if (function <= AXP20X_FUNC_GPIO_IN)
  return axp20x_pmx_set(pctldev, group,
          pctl->funcs[function].muxval);

 if (function == AXP20X_FUNC_LDO)
  mask = pctl->desc->ldo_mask;
 else
  mask = pctl->desc->adc_mask;

 if (!(BIT(group) & mask))
  return -EINVAL;







 if (function == AXP20X_FUNC_LDO)
  return 0;

 return axp20x_pmx_set(pctldev, group, pctl->funcs[function].muxval);
}
