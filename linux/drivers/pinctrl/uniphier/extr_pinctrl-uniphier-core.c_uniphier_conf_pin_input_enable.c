
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct uniphier_pinctrl_priv {int regmap; TYPE_1__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int drv_data; } ;
struct TYPE_2__ {int caps; } ;


 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 int UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL ;
 unsigned int UNIPHIER_PINCTRL_IECTRL_BASE ;
 unsigned int UNIPHIER_PIN_IECTRL_NONE ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 struct uniphier_pinctrl_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;
 unsigned int uniphier_pin_get_iectrl (int ) ;

__attribute__((used)) static int uniphier_conf_pin_input_enable(struct pinctrl_dev *pctldev,
       unsigned int pin, u32 enable)
{
 struct uniphier_pinctrl_priv *priv = pinctrl_dev_get_drvdata(pctldev);
 const struct pin_desc *desc = pin_desc_get(pctldev, pin);
 unsigned int iectrl = uniphier_pin_get_iectrl(desc->drv_data);
 unsigned int reg, mask;





 if (!(priv->socdata->caps & UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL) &&
     !enable)
  return -EINVAL;


 if (iectrl == UNIPHIER_PIN_IECTRL_NONE)
  return enable ? 0 : -EINVAL;

 if (priv->socdata->caps & UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL)
  iectrl = pin;

 reg = UNIPHIER_PINCTRL_IECTRL_BASE + iectrl / 32 * 4;
 mask = BIT(iectrl % 32);

 return regmap_update_bits(priv->regmap, reg, mask, enable ? mask : 0);
}
