
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct wmt_pinctrl_data {int dev; TYPE_1__* banks; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {size_t reg_pull_en; size_t reg_pull_cfg; } ;


 int BIT (size_t) ;
 int EINVAL ;
 size_t NO_REG ;



 size_t WMT_BANK_FROM_PIN (unsigned int) ;
 size_t WMT_BIT_FROM_PIN (unsigned int) ;
 int dev_err (int ,char*,...) ;
 size_t pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int wmt_clearbits (struct wmt_pinctrl_data*,size_t,int ) ;
 int wmt_setbits (struct wmt_pinctrl_data*,size_t,int ) ;

__attribute__((used)) static int wmt_pinconf_set(struct pinctrl_dev *pctldev, unsigned pin,
      unsigned long *configs, unsigned num_configs)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 arg;
 u32 bank = WMT_BANK_FROM_PIN(pin);
 u32 bit = WMT_BIT_FROM_PIN(pin);
 u32 reg_pull_en = data->banks[bank].reg_pull_en;
 u32 reg_pull_cfg = data->banks[bank].reg_pull_cfg;
 int i;

 if ((reg_pull_en == NO_REG) || (reg_pull_cfg == NO_REG)) {
  dev_err(data->dev, "bias functions not supported on pin %d\n",
   pin);
  return -EINVAL;
 }

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  if ((param == 129) ||
      (param == 128)) {
   if (arg == 0)
    param = 130;
  }

  switch (param) {
  case 130:
   wmt_clearbits(data, reg_pull_en, BIT(bit));
   break;
  case 129:
   wmt_clearbits(data, reg_pull_cfg, BIT(bit));
   wmt_setbits(data, reg_pull_en, BIT(bit));
   break;
  case 128:
   wmt_setbits(data, reg_pull_cfg, BIT(bit));
   wmt_setbits(data, reg_pull_en, BIT(bit));
   break;
  default:
   dev_err(data->dev, "unknown pinconf param\n");
   return -EINVAL;
  }
 }

 return 0;
}
