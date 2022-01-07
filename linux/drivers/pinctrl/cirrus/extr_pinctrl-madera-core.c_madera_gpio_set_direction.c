
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct madera_pin_private {int dev; struct madera* madera; } ;
struct madera {int regmap; } ;


 unsigned int MADERA_GP1_DIR ;
 int MADERA_GP1_DIR_MASK ;
 int MADERA_GPIO1_CTRL_2 ;
 int dev_err (int ,char*,unsigned int,int) ;
 struct madera_pin_private* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,int ,unsigned int) ;

__attribute__((used)) static int madera_gpio_set_direction(struct pinctrl_dev *pctldev,
         struct pinctrl_gpio_range *range,
         unsigned int offset,
         bool input)
{
 struct madera_pin_private *priv = pinctrl_dev_get_drvdata(pctldev);
 struct madera *madera = priv->madera;
 unsigned int reg = MADERA_GPIO1_CTRL_2 + (2 * offset);
 unsigned int val;
 int ret;

 if (input)
  val = MADERA_GP1_DIR;
 else
  val = 0;

 ret = regmap_update_bits(madera->regmap, reg, MADERA_GP1_DIR_MASK, val);
 if (ret)
  dev_err(priv->dev, "Failed to write to 0x%x (%d)\n", reg, ret);

 return ret;
}
