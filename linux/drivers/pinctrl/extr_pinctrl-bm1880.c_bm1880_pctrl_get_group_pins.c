
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int npins; } ;


 struct bm1880_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bm1880_pctrl_get_group_pins(struct pinctrl_dev *pctldev,
           unsigned int selector,
           const unsigned int **pins,
           unsigned int *num_pins)
{
 struct bm1880_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 *pins = pctrl->groups[selector].pins;
 *num_pins = pctrl->groups[selector].npins;

 return 0;
}
