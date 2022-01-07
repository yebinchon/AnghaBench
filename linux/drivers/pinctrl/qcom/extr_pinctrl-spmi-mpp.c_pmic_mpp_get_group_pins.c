
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {unsigned int number; } ;



__attribute__((used)) static int pmic_mpp_get_group_pins(struct pinctrl_dev *pctldev,
       unsigned pin,
       const unsigned **pins, unsigned *num_pins)
{
 *pins = &pctldev->desc->pins[pin].number;
 *num_pins = 1;
 return 0;
}
