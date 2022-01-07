
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pinctrl_priv {int regmap; } ;
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int drv_data; } ;
typedef enum uniphier_pin_pull_dir { ____Placeholder_uniphier_pin_pull_dir } uniphier_pin_pull_dir ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int BUG () ;
 int EINVAL ;



 unsigned int UNIPHIER_PINCTRL_PUPDCTRL_BASE ;
 int UNIPHIER_PIN_PULL_DOWN ;
 int UNIPHIER_PIN_PULL_DOWN_FIXED ;
 int UNIPHIER_PIN_PULL_NONE ;
 int UNIPHIER_PIN_PULL_UP ;
 int UNIPHIER_PIN_PULL_UP_FIXED ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int uniphier_pin_get_pull_dir (int ) ;
 unsigned int uniphier_pin_get_pupdctrl (int ) ;

__attribute__((used)) static int uniphier_conf_pin_bias_get(struct pinctrl_dev *pctldev,
          unsigned int pin,
          enum pin_config_param param)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct pin_desc *desc = pin_desc_get(pctldev, pin);
 enum uniphier_pin_pull_dir pull_dir =
    uniphier_pin_get_pull_dir(desc->drv_data);
 unsigned int pupdctrl, reg, shift, val;
 unsigned int expected = 1;
 int ret;

 switch (param) {
 case 130:
  if (pull_dir == UNIPHIER_PIN_PULL_NONE)
   return 0;
  if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED ||
      pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED)
   return -EINVAL;
  expected = 0;
  break;
 case 128:
  if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED)
   return 0;
  if (pull_dir != UNIPHIER_PIN_PULL_UP)
   return -EINVAL;
  break;
 case 129:
  if (pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED)
   return 0;
  if (pull_dir != UNIPHIER_PIN_PULL_DOWN)
   return -EINVAL;
  break;
 default:
  BUG();
 }

 pupdctrl = uniphier_pin_get_pupdctrl(desc->drv_data);

 reg = UNIPHIER_PINCTRL_PUPDCTRL_BASE + pupdctrl / 32 * 4;
 shift = pupdctrl % 32;

 ret = regmap_read(priv->regmap, reg, &val);
 if (ret)
  return ret;

 val = (val >> shift) & 1;

 return (val == expected) ? 0 : -EINVAL;
}
