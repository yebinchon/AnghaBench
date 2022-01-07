
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* pin_groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int num_pins; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int samsung_pinconf_set (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ;

__attribute__((used)) static int samsung_pinconf_group_set(struct pinctrl_dev *pctldev,
   unsigned group, unsigned long *configs,
   unsigned num_configs)
{
 struct samsung_pinctrl_drv_data *drvdata;
 const unsigned int *pins;
 unsigned int cnt;

 drvdata = pinctrl_dev_get_drvdata(pctldev);
 pins = drvdata->pin_groups[group].pins;

 for (cnt = 0; cnt < drvdata->pin_groups[group].num_pins; cnt++)
  samsung_pinconf_set(pctldev, pins[cnt], configs, num_configs);

 return 0;
}
