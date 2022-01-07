
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct madera_pin_private {int dev; TYPE_1__* madera; } ;
struct TYPE_2__ {int regmap; } ;


 int ENOTSUPP ;
 unsigned int MADERA_GP1_DB_MASK ;
 unsigned int MADERA_GP1_DIR_MASK ;
 unsigned int MADERA_GP1_IP_CFG_MASK ;
 unsigned int MADERA_GP1_LVL_MASK ;
 unsigned int MADERA_GP1_OP_CFG_MASK ;
 unsigned int MADERA_GP1_PD ;
 unsigned int MADERA_GP1_PD_MASK ;
 unsigned int MADERA_GP1_PU ;
 unsigned int MADERA_GP1_PU_MASK ;
 int MADERA_GPIO1_CTRL_1 ;
 int dev_err (int ,char*,unsigned int,int) ;
 unsigned int madera_pin_unmake_drv_str (struct madera_pin_private*,unsigned int) ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct madera_pin_private* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int madera_pin_conf_get(struct pinctrl_dev *pctldev, unsigned int pin,
          unsigned long *config)
{
 struct madera_pin_private *priv = pinctrl_dev_get_drvdata(pctldev);
 unsigned int param = pinconf_to_config_param(*config);
 unsigned int result = 0;
 unsigned int reg = MADERA_GPIO1_CTRL_1 + (2 * pin);
 unsigned int conf[2];
 int ret;

 ret = regmap_read(priv->madera->regmap, reg, &conf[0]);
 if (!ret)
  ret = regmap_read(priv->madera->regmap, reg + 1, &conf[1]);

 if (ret) {
  dev_err(priv->dev, "Failed to read GP%d conf (%d)\n",
   pin + 1, ret);
  return ret;
 }

 switch (param) {
 case 139:
  conf[1] &= MADERA_GP1_PU_MASK | MADERA_GP1_PD_MASK;
  if (conf[1] == (MADERA_GP1_PU | MADERA_GP1_PD))
   result = 1;
  break;
 case 138:
  conf[1] &= MADERA_GP1_PU_MASK | MADERA_GP1_PD_MASK;
  if (!conf[1])
   result = 1;
  break;
 case 137:
  conf[1] &= MADERA_GP1_PU_MASK | MADERA_GP1_PD_MASK;
  if (conf[1] == MADERA_GP1_PD_MASK)
   result = 1;
  break;
 case 136:
  conf[1] &= MADERA_GP1_PU_MASK | MADERA_GP1_PD_MASK;
  if (conf[1] == MADERA_GP1_PU_MASK)
   result = 1;
  break;
 case 135:
  if (conf[0] & MADERA_GP1_OP_CFG_MASK)
   result = 1;
  break;
 case 134:
  if (!(conf[0] & MADERA_GP1_OP_CFG_MASK))
   result = 1;
  break;
 case 133:
  result = madera_pin_unmake_drv_str(priv, conf[1]);
  break;
 case 132:
  if (conf[0] & MADERA_GP1_DB_MASK)
   result = 1;
  break;
 case 131:
  if (conf[0] & MADERA_GP1_DIR_MASK)
   result = 1;
  break;
 case 130:
 case 129:
  if (conf[0] & MADERA_GP1_IP_CFG_MASK)
   result = 1;
  break;
 case 128:
  if ((conf[1] & MADERA_GP1_DIR_MASK) &&
      (conf[0] & MADERA_GP1_LVL_MASK))
   result = 1;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, result);

 return 0;
}
