
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u32 ;
struct uniphier_pinctrl_priv {int regmap; } ;
struct pinctrl_dev {int dev; } ;
struct pin_desc {int name; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int const,...) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;
 int uniphier_conf_get_drvctrl_data (struct pinctrl_dev*,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int const**) ;

__attribute__((used)) static int uniphier_conf_pin_drive_set(struct pinctrl_dev *pctldev,
           unsigned int pin, u32 strength)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct pin_desc *desc = pin_desc_get(pctldev, pin);
 unsigned int reg, shift, mask, val;
 const unsigned int *strengths;
 int ret;

 ret = uniphier_conf_get_drvctrl_data(pctldev, pin, &reg, &shift,
          &mask, &strengths);
 if (ret) {
  dev_err(pctldev->dev, "cannot set drive strength for pin %s\n",
   desc->name);
  return ret;
 }

 for (val = 0; val <= mask; val++) {
  if (strengths[val] > strength)
   break;
 }

 if (val == 0) {
  dev_err(pctldev->dev,
   "unsupported drive strength %u mA for pin %s\n",
   strength, desc->name);
  return -EINVAL;
 }

 if (!mask)
  return 0;

 val--;

 return regmap_update_bits(priv->regmap, reg,
      mask << shift, val << shift);
}
