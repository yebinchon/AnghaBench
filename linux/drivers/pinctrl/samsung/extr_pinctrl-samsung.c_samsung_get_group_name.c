
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* pin_groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *samsung_get_group_name(struct pinctrl_dev *pctldev,
      unsigned group)
{
 struct samsung_pinctrl_drv_data *pmx = pinctrl_dev_get_drvdata(pctldev);

 return pmx->pin_groups[group].name;
}
