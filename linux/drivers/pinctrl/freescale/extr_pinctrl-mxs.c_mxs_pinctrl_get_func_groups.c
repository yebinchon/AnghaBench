
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mxs_pinctrl_data {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char** groups; unsigned int ngroups; } ;


 struct mxs_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mxs_pinctrl_get_func_groups(struct pinctrl_dev *pctldev,
           unsigned group,
           const char * const **groups,
           unsigned * const num_groups)
{
 struct mxs_pinctrl_data *d = pinctrl_dev_get_drvdata(pctldev);

 *groups = d->soc->functions[group].groups;
 *num_groups = d->soc->functions[group].ngroups;

 return 0;
}
