
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {TYPE_1__* funcs; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int ltq_pmx_get_groups(struct pinctrl_dev *pctrldev,
    unsigned func,
    const char * const **groups,
    unsigned * const num_groups)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);

 *groups = info->funcs[func].groups;
 *num_groups = info->funcs[func].num_groups;

 return 0;
}
