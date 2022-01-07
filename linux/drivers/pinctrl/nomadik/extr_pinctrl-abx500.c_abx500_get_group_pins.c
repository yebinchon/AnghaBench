
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct abx500_pinctrl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int npins; } ;


 struct abx500_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int abx500_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned selector,
     const unsigned **pins,
     unsigned *num_pins)
{
 struct abx500_pinctrl *pct = pinctrl_dev_get_drvdata(pctldev);

 *pins = pct->soc->groups[selector].pins;
 *num_pins = pct->soc->groups[selector].npins;

 return 0;
}
