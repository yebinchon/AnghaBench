
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct intel_pinctrl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char** groups; unsigned int ngroups; } ;


 struct intel_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int intel_get_function_groups(struct pinctrl_dev *pctldev,
         unsigned int function,
         const char * const **groups,
         unsigned int * const ngroups)
{
 struct intel_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctrl->soc->functions[function].groups;
 *ngroups = pctrl->soc->functions[function].ngroups;
 return 0;
}
