
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int npins; struct pinctrl_pin_desc* pins; } ;
struct rza2_pinctrl_priv {unsigned int npins; int dev; int pctl; TYPE_1__ desc; struct pinctrl_pin_desc* pins; } ;
struct pinctrl_pin_desc {unsigned int number; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 struct pinctrl_pin_desc* devm_kcalloc (int ,unsigned int,int,int ) ;
 int devm_pinctrl_register_and_init (int ,TYPE_1__*,struct rza2_pinctrl_priv*,int *) ;
 int pinctrl_enable (int ) ;
 int * rza2_gpio_names ;
 int rza2_gpio_register (struct rza2_pinctrl_priv*) ;

__attribute__((used)) static int rza2_pinctrl_register(struct rza2_pinctrl_priv *priv)
{
 struct pinctrl_pin_desc *pins;
 unsigned int i;
 int ret;

 pins = devm_kcalloc(priv->dev, priv->npins, sizeof(*pins), GFP_KERNEL);
 if (!pins)
  return -ENOMEM;

 priv->pins = pins;
 priv->desc.pins = pins;
 priv->desc.npins = priv->npins;

 for (i = 0; i < priv->npins; i++) {
  pins[i].number = i;
  pins[i].name = rza2_gpio_names[i];
 }

 ret = devm_pinctrl_register_and_init(priv->dev, &priv->desc, priv,
          &priv->pctl);
 if (ret) {
  dev_err(priv->dev, "pinctrl registration failed\n");
  return ret;
 }

 ret = pinctrl_enable(priv->pctl);
 if (ret) {
  dev_err(priv->dev, "pinctrl enable failed\n");
  return ret;
 }

 ret = rza2_gpio_register(priv);
 if (ret) {
  dev_err(priv->dev, "GPIO registration failed\n");
  return ret;
 }

 return 0;
}
