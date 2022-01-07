
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct armada_37xx_pinctrl {TYPE_1__* funcs; struct armada_37xx_pin_group* groups; } ;
struct armada_37xx_pin_group {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int armada_37xx_pmx_set_by_name (struct pinctrl_dev*,char const*,struct armada_37xx_pin_group*) ;
 struct armada_37xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int armada_37xx_pmx_set(struct pinctrl_dev *pctldev,
          unsigned int selector,
          unsigned int group)
{

 struct armada_37xx_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct armada_37xx_pin_group *grp = &info->groups[group];
 const char *name = info->funcs[selector].name;

 return armada_37xx_pmx_set_by_name(pctldev, name, grp);
}
