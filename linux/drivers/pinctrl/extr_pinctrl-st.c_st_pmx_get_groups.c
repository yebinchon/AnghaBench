
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct st_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int st_pmx_get_groups(struct pinctrl_dev *pctldev,
 unsigned selector, const char * const **grps, unsigned * const ngrps)
{
 struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 *grps = info->functions[selector].groups;
 *ngrps = info->functions[selector].ngroups;

 return 0;
}
