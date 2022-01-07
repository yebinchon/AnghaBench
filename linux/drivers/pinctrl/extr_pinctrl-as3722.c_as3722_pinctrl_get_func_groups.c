
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct as3722_pctrl_info {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct as3722_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int as3722_pinctrl_get_func_groups(struct pinctrl_dev *pctldev,
  unsigned function, const char * const **groups,
  unsigned * const num_groups)
{
 struct as3722_pctrl_info *as_pci = pinctrl_dev_get_drvdata(pctldev);

 *groups = as_pci->functions[function].groups;
 *num_groups = as_pci->functions[function].ngroups;
 return 0;
}
