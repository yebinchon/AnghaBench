
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {TYPE_1__* soc; } ;
struct mtk_pin_desc {int dummy; } ;
struct TYPE_2__ {int (* bias_disable_get ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int*) ;int (* bias_get ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;int (* drive_get ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int*) ;int (* adv_pull_get ) (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;int * pins; } ;


 int EINVAL ;
 int ENOTSUPP ;




 int PINCTRL_PIN_REG_DIR ;
 int PINCTRL_PIN_REG_RDSEL ;
 int PINCTRL_PIN_REG_SMT ;
 int PINCTRL_PIN_REG_SR ;
 int PINCTRL_PIN_REG_TDSEL ;
 int mtk_hw_get_value (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int stub1 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int*) ;
 int stub2 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;
 int stub3 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;
 int stub4 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int*) ;
 int stub5 (struct mtk_pinctrl*,struct mtk_pin_desc const*,int,int*) ;

__attribute__((used)) static int mtk_pinconf_get(struct pinctrl_dev *pctldev,
      unsigned int pin, unsigned long *config)
{
 struct mtk_pinctrl *hw = pinctrl_dev_get_drvdata(pctldev);
 u32 param = pinconf_to_config_param(*config);
 int val, val2, err, reg, ret = 1;
 const struct mtk_pin_desc *desc;

 desc = (const struct mtk_pin_desc *)&hw->soc->pins[pin];

 switch (param) {
 case 135:
  if (hw->soc->bias_disable_get) {
   err = hw->soc->bias_disable_get(hw, desc, &ret);
   if (err)
    return err;
  } else {
   return -ENOTSUPP;
  }
  break;
 case 133:
  if (hw->soc->bias_get) {
   err = hw->soc->bias_get(hw, desc, 1, &ret);
   if (err)
    return err;
  } else {
   return -ENOTSUPP;
  }
  break;
 case 134:
  if (hw->soc->bias_get) {
   err = hw->soc->bias_get(hw, desc, 0, &ret);
   if (err)
    return err;
  } else {
   return -ENOTSUPP;
  }
  break;
 case 128:
  err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &val);
  if (err)
   return err;

  if (!val)
   return -EINVAL;

  break;
 case 131:
 case 129:
  err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
  if (err)
   return err;


  if ((val && param == 131) ||
      (!val && param == 129))
   return -EINVAL;

  break;
 case 130:
  err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &val);
  if (err)
   return err;

  err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SMT, &val2);
  if (err)
   return err;

  if (val || !val2)
   return -EINVAL;

  break;
 case 132:
  if (hw->soc->drive_get) {
   err = hw->soc->drive_get(hw, desc, &ret);
   if (err)
    return err;
  } else {
   err = -ENOTSUPP;
  }
  break;
 case 136:
 case 137:
  reg = (param == 136) ?
         PINCTRL_PIN_REG_TDSEL : PINCTRL_PIN_REG_RDSEL;

  err = mtk_hw_get_value(hw, desc, reg, &val);
  if (err)
   return err;

  ret = val;

  break;
 case 138:
 case 139:
  if (hw->soc->adv_pull_get) {
   bool pullup;

   pullup = param == 138;
   err = hw->soc->adv_pull_get(hw, desc, pullup, &ret);
   if (err)
    return err;
  } else {
   return -ENOTSUPP;
  }
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, ret);

 return 0;
}
