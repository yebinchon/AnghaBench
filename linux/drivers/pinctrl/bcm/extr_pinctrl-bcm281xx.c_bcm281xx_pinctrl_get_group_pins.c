
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct bcm281xx_pinctrl_data {TYPE_1__* pins; } ;
struct TYPE_2__ {unsigned int number; } ;


 struct bcm281xx_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bcm281xx_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
        unsigned group,
        const unsigned **pins,
        unsigned *num_pins)
{
 struct bcm281xx_pinctrl_data *pdata = pinctrl_dev_get_drvdata(pctldev);

 *pins = &pdata->pins[group].number;
 *num_pins = 1;

 return 0;
}
