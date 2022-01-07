
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct at91_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct at91_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int at91_pmx_get_groups(struct pinctrl_dev *pctldev, unsigned selector,
          const char * const **groups,
          unsigned * const num_groups)
{
 struct at91_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 *groups = info->functions[selector].groups;
 *num_groups = info->functions[selector].ngroups;

 return 0;
}
