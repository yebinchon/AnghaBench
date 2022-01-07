
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_pinctrl_priv {TYPE_2__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {unsigned int* pins; unsigned int num_pins; } ;


 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int uniphier_pctl_get_group_pins(struct pinctrl_dev *pctldev,
     unsigned selector,
     const unsigned **pins,
     unsigned *num_pins)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);

 *pins = priv->socdata->groups[selector].pins;
 *num_pins = priv->socdata->groups[selector].num_pins;

 return 0;
}
