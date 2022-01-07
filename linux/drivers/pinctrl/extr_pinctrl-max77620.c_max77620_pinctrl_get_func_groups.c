
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct max77620_pctrl_info {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct max77620_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int max77620_pinctrl_get_func_groups(struct pinctrl_dev *pctldev,
         unsigned int function,
         const char * const **groups,
         unsigned int * const num_groups)
{
 struct max77620_pctrl_info *mpci = pinctrl_dev_get_drvdata(pctldev);

 *groups = mpci->functions[function].groups;
 *num_groups = mpci->functions[function].ngroups;

 return 0;
}
