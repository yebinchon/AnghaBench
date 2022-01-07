
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynq_pinctrl {TYPE_1__* funcs; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct zynq_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int zynq_pmux_get_function_groups(struct pinctrl_dev *pctldev,
      unsigned int selector,
      const char * const **groups,
      unsigned * const num_groups)
{
 struct zynq_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctrl->funcs[selector].groups;
 *num_groups = pctrl->funcs[selector].ngroups;
 return 0;
}
