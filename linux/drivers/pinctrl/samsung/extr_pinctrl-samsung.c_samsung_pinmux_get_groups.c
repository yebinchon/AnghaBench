
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* pmx_functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int samsung_pinmux_get_groups(struct pinctrl_dev *pctldev,
  unsigned selector, const char * const **groups,
  unsigned * const num_groups)
{
 struct samsung_pinctrl_drv_data *drvdata;

 drvdata = pinctrl_dev_get_drvdata(pctldev);
 *groups = drvdata->pmx_functions[selector].groups;
 *num_groups = drvdata->pmx_functions[selector].num_groups;
 return 0;
}
