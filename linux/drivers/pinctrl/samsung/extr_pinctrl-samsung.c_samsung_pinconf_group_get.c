
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* pin_groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int samsung_pinconf_get (struct pinctrl_dev*,unsigned int const,unsigned long*) ;

__attribute__((used)) static int samsung_pinconf_group_get(struct pinctrl_dev *pctldev,
    unsigned int group, unsigned long *config)
{
 struct samsung_pinctrl_drv_data *drvdata;
 const unsigned int *pins;

 drvdata = pinctrl_dev_get_drvdata(pctldev);
 pins = drvdata->pin_groups[group].pins;
 samsung_pinconf_get(pctldev, pins[0], config);
 return 0;
}
