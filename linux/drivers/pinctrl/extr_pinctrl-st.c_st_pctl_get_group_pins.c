
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_pinctrl {unsigned int ngroups; TYPE_1__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 int EINVAL ;
 struct st_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int st_pctl_get_group_pins(struct pinctrl_dev *pctldev,
 unsigned selector, const unsigned **pins, unsigned *npins)
{
 struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);

 if (selector >= info->ngroups)
  return -EINVAL;

 *pins = info->groups[selector].pins;
 *npins = info->groups[selector].npins;

 return 0;
}
