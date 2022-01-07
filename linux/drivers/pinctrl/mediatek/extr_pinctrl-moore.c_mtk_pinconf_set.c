
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct TYPE_2__ {int (* bias_disable_set ) (struct mtk_pinctrl*,struct mtk_pin_desc const*) ;int (* bias_set ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int) ;int (* drive_set ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int) ;int (* adv_pull_set ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int) ;int ies_present; int * pins; } ;


 int ENOTSUPP ;
 int MTK_DISABLE ;
 int MTK_ENABLE ;
 int MTK_INPUT ;
 int MTK_OUTPUT ;




 int PINCTRL_PIN_REG_DIR ;
 int PINCTRL_PIN_REG_DO ;
 int PINCTRL_PIN_REG_IES ;
 int PINCTRL_PIN_REG_RDSEL ;
 int PINCTRL_PIN_REG_SMT ;
 int PINCTRL_PIN_REG_SR ;
 int PINCTRL_PIN_REG_TDSEL ;
 int mtk_hw_set_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int stub1 (struct mtk_pinctrl*,struct mtk_pin_desc const*) ;
 int stub2 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int) ;
 int stub3 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int) ;
 int stub4 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int) ;
 int stub5 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int) ;

__attribute__((used)) static int mtk_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
      unsigned long *configs, unsigned int num_configs)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 const struct mtk_pin_desc *desc;
 u32 reg, param, arg;
 int cfg, err = 0;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];

 for (cfg = 0; cfg < num_configs; cfg++) {
  param = pinconf_to_config_param(configs[cfg]);
  arg = pinconf_to_config_argument(configs[cfg]);

  switch (param) {
  case 136:
   if (hw->soc->bias_disable_set) {
    err = hw->soc->bias_disable_set(hw, desc);
    if (err)
     return err;
   } else {
    return -ENOTSUPP;
   }
   break;
  case 134:
   if (hw->soc->bias_set) {
    err = hw->soc->bias_set(hw, desc, 1);
    if (err)
     return err;
   } else {
    return -ENOTSUPP;
   }
   break;
  case 135:
   if (hw->soc->bias_set) {
    err = hw->soc->bias_set(hw, desc, 0);
    if (err)
     return err;
   } else {
    return -ENOTSUPP;
   }
   break;
  case 129:
   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
            MTK_DISABLE);
   if (err)
    goto err;

   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
            MTK_OUTPUT);
   if (err)
    goto err;
   break;
  case 132:

   if (hw->soc->ies_present) {
    mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_IES,
       MTK_ENABLE);
   }

   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
            MTK_INPUT);
   if (err)
    goto err;
   break;
  case 128:
   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SR,
            arg);
   if (err)
    goto err;

   break;
  case 130:
   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
            MTK_OUTPUT);
   if (err)
    goto err;

   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO,
            arg);
   if (err)
    goto err;
   break;
  case 131:



   arg = arg ? 2 : 1;
   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DIR,
            arg & 1);
   if (err)
    goto err;

   err = mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_SMT,
            !!(arg & 2));
   if (err)
    goto err;
   break;
  case 133:
   if (hw->soc->drive_set) {
    err = hw->soc->drive_set(hw, desc, arg);
    if (err)
     return err;
   } else {
    err = -ENOTSUPP;
   }
   break;
  case 137:
  case 138:
   reg = (param == 137) ?
          PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;

   err = mtk_hw_set_value(hw, desc, reg, arg);
   if (err)
    goto err;
   break;
  case 139:
  case 140:
   if (hw->soc->adv_pull_set) {
    bool pullup;

    pullup = param == 139;
    err = hw->soc->adv_pull_set(hw, desc, pullup,
           arg);
    if (err)
     return err;
   } else {
    return -ENOTSUPP;
   }
   break;
  default:
   err = -ENOTSUPP;
  }
 }
err:
 return err;
}
