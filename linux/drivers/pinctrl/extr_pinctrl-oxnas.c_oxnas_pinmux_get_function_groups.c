
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int oxnas_pinmux_get_function_groups(struct pinctrl_dev *pctldev,
         unsigned int func,
         const char * const **groups,
         unsigned int * const num_groups)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctl->functions[func].groups;
 *num_groups = pctl->functions[func].ngroups;

 return 0;
}
