
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk805_pctrl_info {TYPE_1__* groups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 struct rk805_pctrl_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rk805_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned int group,
     const unsigned int **pins,
     unsigned int *num_pins)
{
 struct rk805_pctrl_info *pci = pinctrl_dev_get_drvdata(pctldev);

 *pins = pci->groups[group].pins;
 *num_pins = pci->groups[group].npins;

 return 0;
}
