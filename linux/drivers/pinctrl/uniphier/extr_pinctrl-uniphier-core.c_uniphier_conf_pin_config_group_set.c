
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
 int uniphier_conf_pin_config_set (struct pinctrl_dev*,unsigned int const,unsigned long*,unsigned int) ;

__attribute__((used)) static int uniphier_conf_pin_config_group_set(struct pinctrl_dev *pctldev,
           unsigned selector,
           unsigned long *configs,
           unsigned num_configs)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const unsigned *pins = priv->socdata->groups[selector].pins;
 unsigned num_pins = priv->socdata->groups[selector].num_pins;
 int i, ret;

 for (i = 0; i < num_pins; i++) {
  ret = uniphier_conf_pin_config_set(pctldev, pins[i],
         configs, num_configs);
  if (ret)
   return ret;
 }

 return 0;
}
