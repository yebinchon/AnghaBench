
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sunxi_pmx_get_func_groups(struct pinctrl_dev *pctldev,
         unsigned function,
         const char * const **groups,
         unsigned * const num_groups)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctl->functions[function].groups;
 *num_groups = pctl->functions[function].ngroups;

 return 0;
}
