
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int number; } ;


 TYPE_1__* lpc18xx_pins ;

__attribute__((used)) static int lpc18xx_pctl_get_group_pins(struct pinctrl_dev *pctldev,
           unsigned group,
           const unsigned **pins,
           unsigned *num_pins)
{
 *pins = &lpc18xx_pins[group].number;
 *num_pins = 1;

 return 0;
}
