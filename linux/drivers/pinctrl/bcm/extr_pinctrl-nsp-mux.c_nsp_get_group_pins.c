
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct nsp_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int num_pins; } ;


 struct nsp_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nsp_get_group_pins(struct pinctrl_dev *pctrl_dev,
         unsigned int selector, const unsigned int **pins,
         unsigned int *num_pins)
{
 struct nsp_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 *pins = pinctrl->groups[selector].pins;
 *num_pins = pinctrl->groups[selector].num_pins;

 return 0;
}
