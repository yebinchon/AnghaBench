
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sprd_pinctrl_soc_info {unsigned int ngroups; TYPE_1__* groups; } ;
struct sprd_pinctrl {struct sprd_pinctrl_soc_info* info; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 int EINVAL ;
 struct sprd_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int sprd_pctrl_group_pins(struct pinctrl_dev *pctldev,
     unsigned int selector,
     const unsigned int **pins,
     unsigned int *npins)
{
 struct sprd_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct sprd_pinctrl_soc_info *info = pctl->info;

 if (selector >= info->ngroups)
  return -EINVAL;

 *pins = info->groups[selector].pins;
 *npins = info->groups[selector].npins;

 return 0;
}
