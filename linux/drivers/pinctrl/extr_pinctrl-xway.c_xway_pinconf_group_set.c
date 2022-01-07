
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {TYPE_1__* grps; } ;
struct TYPE_2__ {int npins; int * pins; } ;


 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int xway_pinconf_set (struct pinctrl_dev*,int ,unsigned long*,unsigned int) ;

int xway_pinconf_group_set(struct pinctrl_dev *pctldev,
   unsigned selector,
   unsigned long *configs,
   unsigned num_configs)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctldev);
 int i, ret = 0;

 for (i = 0; i < info->grps[selector].npins && !ret; i++)
  ret = xway_pinconf_set(pctldev,
    info->grps[selector].pins[i],
    configs,
    num_configs);

 return ret;
}
