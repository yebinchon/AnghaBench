
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct madera_pin_private {TYPE_1__* chip; } ;
struct TYPE_2__ {int n_pin_groups; int n_pins; } ;


 struct madera_pin_private* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int madera_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct madera_pin_private *priv = pinctrl_dev_get_drvdata(pctldev);


 return priv->chip->n_pin_groups + priv->chip->n_pins;
}
