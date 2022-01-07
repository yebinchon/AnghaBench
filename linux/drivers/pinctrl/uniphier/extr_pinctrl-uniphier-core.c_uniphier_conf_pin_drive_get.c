
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct uniphier_pinctrl_priv {int regmap; } ;
struct pinctrl_dev {int dummy; } ;


 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int uniphier_conf_get_drvctrl_data (struct pinctrl_dev*,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int const**) ;

__attribute__((used)) static int uniphier_conf_pin_drive_get(struct pinctrl_dev *pctldev,
           unsigned int pin, u32 *strength)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 unsigned int reg, shift, mask, val;
 const unsigned int *strengths;
 int ret;

 ret = uniphier_conf_get_drvctrl_data(pctldev, pin, &reg, &shift,
          &mask, &strengths);
 if (ret)
  return ret;

 if (mask) {
  ret = regmap_read(priv->regmap, reg, &val);
  if (ret)
   return ret;
 } else {
  val = 0;
 }

 *strength = strengths[(val >> shift) & mask];

 return 0;
}
