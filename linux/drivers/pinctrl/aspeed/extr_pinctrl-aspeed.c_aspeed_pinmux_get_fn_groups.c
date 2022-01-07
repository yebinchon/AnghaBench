
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct aspeed_pinctrl_data {TYPE_2__ pinmux; } ;
struct TYPE_3__ {char** groups; unsigned int ngroups; } ;


 struct aspeed_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

int aspeed_pinmux_get_fn_groups(struct pinctrl_dev *pctldev,
    unsigned int function,
    const char * const **groups,
    unsigned int * const num_groups)
{
 struct aspeed_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 *groups = pdata->pinmux.functions[function].groups;
 *num_groups = pdata->pinmux.functions[function].ngroups;

 return 0;
}
