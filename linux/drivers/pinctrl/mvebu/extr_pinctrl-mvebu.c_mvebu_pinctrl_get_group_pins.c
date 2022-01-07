
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct mvebu_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 struct mvebu_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mvebu_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned gid, const unsigned **pins,
     unsigned *num_pins)
{
 struct mvebu_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 *pins = pctl->groups[gid].pins;
 *num_pins = pctl->groups[gid].npins;
 return 0;
}
