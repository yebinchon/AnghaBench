
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int ngroups; } ;
struct aspeed_pinctrl_data {TYPE_1__ pinmux; } ;


 struct aspeed_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

int aspeed_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 return pdata->pinmux.ngroups;
}
