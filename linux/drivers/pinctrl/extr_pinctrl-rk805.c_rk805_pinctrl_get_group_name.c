
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk805_pctrl_info {TYPE_1__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *rk805_pinctrl_get_group_name(struct pinctrl_dev *pctldev,
      unsigned int group)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);

 return pci->groups[group].name;
}
