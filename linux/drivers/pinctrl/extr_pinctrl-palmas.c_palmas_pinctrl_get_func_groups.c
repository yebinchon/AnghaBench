
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct palmas_pctrl_chip_info {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct palmas_pctrl_chip_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int palmas_pinctrl_get_func_groups(struct pinctrl_dev *pctldev,
  unsigned function, const char * const **groups,
  unsigned * const num_groups)
{
 struct palmas_pctrl_chip_info *pci = pinctrl_dev_get_drvdata(pctldev);

 *groups = pci->functions[function].groups;
 *num_groups = pci->functions[function].ngroups;
 return 0;
}
