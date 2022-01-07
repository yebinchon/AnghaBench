
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rzn1_pinctrl {unsigned int ngroups; TYPE_1__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 int EINVAL ;
 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rzn1_get_group_pins(struct pinctrl_dev *pctldev,
          unsigned int selector, const unsigned int **pins,
          unsigned int *npins)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);

 if (selector >= ipctl->ngroups)
  return -EINVAL;

 *pins = ipctl->groups[selector].pins;
 *npins = ipctl->groups[selector].npins;

 return 0;
}
