
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_pinctrl_drv_data {TYPE_1__* pmx_functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct samsung_pinctrl_drv_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *samsung_pinmux_get_fname(struct pinctrl_dev *pctldev,
      unsigned selector)
{
 struct samsung_pinctrl_drv_data *drvdata;

 drvdata = pinctrl_dev_get_drvdata(pctldev);
 return drvdata->pmx_functions[selector].name;
}
