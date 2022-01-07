
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mvebu_pinctrl {TYPE_1__* functions; } ;
struct TYPE_2__ {char** groups; unsigned int num_groups; } ;


 struct mvebu_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mvebu_pinmux_get_groups(struct pinctrl_dev *pctldev, unsigned fid,
    const char * const **groups,
    unsigned * const num_groups)
{
 struct mvebu_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 *groups = pctl->functions[fid].groups;
 *num_groups = pctl->functions[fid].num_groups;
 return 0;
}
