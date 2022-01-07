
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct aspeed_pinctrl_data {TYPE_2__ pinmux; } ;
struct TYPE_3__ {char const* name; } ;


 struct aspeed_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

const char *aspeed_pinctrl_get_group_name(struct pinctrl_dev *pctldev,
  unsigned int group)
{
 struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 return pdata->pinmux.groups[group].name;
}
