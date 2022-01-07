
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pinctrl {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char** groups; unsigned int ngroups; } ;


 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rockchip_pmx_get_groups(struct pinctrl_dev *pctldev,
    unsigned selector, const char * const **groups,
    unsigned * const num_groups)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 *groups = info->functions[selector].groups;
 *num_groups = info->functions[selector].ngroups;

 return 0;
}
