
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int* pins; unsigned int num_pins; } ;


 TYPE_1__* sirfsoc_pin_groups ;

__attribute__((used)) static int sirfsoc_get_group_pins(struct pinctrl_dev *pctldev,
    unsigned selector,
    const unsigned **pins,
    unsigned *num_pins)
{
 *pins = sirfsoc_pin_groups[selector].pins;
 *num_pins = sirfsoc_pin_groups[selector].num_pins;
 return 0;
}
