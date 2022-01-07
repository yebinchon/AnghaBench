
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct axp20x_pctl {TYPE_1__* funcs; } ;
struct TYPE_2__ {int muxval; } ;


 size_t AXP20X_FUNC_GPIO_IN ;
 size_t AXP20X_FUNC_GPIO_OUT ;
 int axp20x_pmx_set (struct pinctrl_dev*,unsigned int,int ) ;
 struct axp20x_pctl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int axp20x_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
      struct pinctrl_gpio_range *range,
      unsigned int offset, bool input)
{
 struct axp20x_pctl *pctl = pinctrl_dev_get_drvdata(pctldev);

 if (input)
  return axp20x_pmx_set(pctldev, offset,
          pctl->funcs[AXP20X_FUNC_GPIO_IN].muxval);

 return axp20x_pmx_set(pctldev, offset,
         pctl->funcs[AXP20X_FUNC_GPIO_OUT].muxval);
}
