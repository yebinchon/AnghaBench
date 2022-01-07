
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pistachio_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct pistachio_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pistachio_pinmux_get_function_groups(struct pinctrl_dev *pctldev,
      unsigned func,
      const char * const **groups,
      unsigned * const num_groups)
{
 struct pistachio_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctl->functions[func].groups;
 *num_groups = pctl->functions[func].ngroups;

 return 0;
}
