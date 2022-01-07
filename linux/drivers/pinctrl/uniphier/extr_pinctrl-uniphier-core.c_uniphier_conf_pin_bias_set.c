
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pinctrl_priv {int regmap; } ;
struct pinctrl_dev {int dev; } ;
struct pin_desc {int drv_data; int name; } ;
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
 int dev_err (int ,char*,...) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,int,unsigned int) ;
 int uniphier_pin_get_pull_dir (int ) ;
 unsigned int uniphier_pin_get_pupdctrl (int ) ;

__attribute__((used)) static int uniphier_conf_pin_bias_set(struct pinctrl_dev *pctldev,
          unsigned int pin,
          enum pin_config_param param, u32 arg)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct pin_desc *desc = pin_desc_get(pctldev, pin);
 enum uniphier_pin_pull_dir pull_dir =
    uniphier_pin_get_pull_dir(desc->drv_data);
 unsigned int pupdctrl, reg, shift;
 unsigned int val = 1;

 switch (param) {
 case 131:
  if (pull_dir == UNIPHIER_PIN_PULL_NONE)
   return 0;
  if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED ||
      pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED) {
   dev_err(pctldev->dev,
    "can not disable pull register for pin %s\n",
    desc->name);
   return -EINVAL;
  }
  val = 0;
  break;
 case 128:
  if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED && arg != 0)
   return 0;
  if (pull_dir != UNIPHIER_PIN_PULL_UP) {
   dev_err(pctldev->dev,
    "pull-up is unsupported for pin %s\n",
    desc->name);
   return -EINVAL;
  }
  if (arg == 0) {
   dev_err(pctldev->dev, "pull-up can not be total\n");
   return -EINVAL;
  }
  break;
 case 130:
  if (pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED && arg != 0)
   return 0;
  if (pull_dir != UNIPHIER_PIN_PULL_DOWN) {
   dev_err(pctldev->dev,
    "pull-down is unsupported for pin %s\n",
    desc->name);
   return -EINVAL;
  }
  if (arg == 0) {
   dev_err(pctldev->dev, "pull-down can not be total\n");
   return -EINVAL;
  }
  break;
 case 129:
  if (pull_dir == UNIPHIER_PIN_PULL_NONE) {
   dev_err(pctldev->dev,
    "pull-up/down is unsupported for pin %s\n",
    desc->name);
   return -EINVAL;
  }

  if (arg == 0)
   return 0;
  break;
 default:
  BUG();
 }

 pupdctrl = uniphier_pin_get_pupdctrl(desc->drv_data);

 reg = UNIPHIER_PINCTRL_PUPDCTRL_BASE + pupdctrl / 32 * 4;
 shift = pupdctrl % 32;

 return regmap_update_bits(priv->regmap, reg, 1 << shift, val << shift);
}
