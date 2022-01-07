
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int num_pins; scalar_t__ pins; } ;


 TYPE_1__* artpec6_pin_groups ;

__attribute__((used)) static int artpec6_get_group_pins(struct pinctrl_dev *pctldev,
      unsigned int group,
      const unsigned int **pins,
      unsigned int *num_pins)
{
 *pins = (unsigned int *)artpec6_pin_groups[group].pins;
 *num_pins = artpec6_pin_groups[group].num_pins;
 return 0;
}
