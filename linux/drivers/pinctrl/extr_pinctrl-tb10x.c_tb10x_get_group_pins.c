
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb10x_pinctrl {TYPE_1__* pingroups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int pincnt; } ;


 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int tb10x_get_group_pins(struct pinctrl_dev *pctl, unsigned n,
    unsigned const **pins,
    unsigned * const num_pins)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);

 *pins = state->pingroups[n].pins;
 *num_pins = state->pingroups[n].pincnt;

 return 0;
}
