
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct bcm281xx_pinctrl_data {TYPE_1__* functions; } ;
struct TYPE_2__ {char const* name; } ;


 struct bcm281xx_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *bcm281xx_pinctrl_get_fcn_name(struct pinctrl_dev *pctldev,
       unsigned function)
{
 struct bcm281xx_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 return pdata->functions[function].name;
}
