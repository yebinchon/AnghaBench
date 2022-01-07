
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_gpio {TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {unsigned int number; } ;


 struct pm8xxx_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pm8xxx_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned group,
     const unsigned **pins,
     unsigned *num_pins)
{
 struct pm8xxx_gpio *pctrl = pinctrl_dev_get_drvdata(pctldev);

 *pins = &pctrl->desc.pins[group].number;
 *num_pins = 1;

 return 0;
}
