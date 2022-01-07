
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct madera_pin_private {TYPE_1__* chip; } ;
struct TYPE_4__ {unsigned int* pins; unsigned int n_pins; } ;
struct TYPE_3__ {unsigned int n_pin_groups; TYPE_2__* pin_groups; } ;


 unsigned int* madera_pin_single_group_pins ;
 struct madera_pin_private* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int madera_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned int selector,
     const unsigned int **pins,
     unsigned int *num_pins)
{
 struct madera_pin_private *priv = pinctrl_dev_get_drvdata(pctldev);

 if (selector < priv->chip->n_pin_groups) {
  *pins = priv->chip->pin_groups[selector].pins;
  *num_pins = priv->chip->pin_groups[selector].n_pins;
 } else {

  selector -= priv->chip->n_pin_groups;
  *pins = &madera_pin_single_group_pins[selector];
  *num_pins = 1;
 }
 return 0;
}
