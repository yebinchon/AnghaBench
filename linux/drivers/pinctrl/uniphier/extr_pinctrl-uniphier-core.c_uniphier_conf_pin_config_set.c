
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;






 int dev_err (int ,char*,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int uniphier_conf_pin_bias_set (struct pinctrl_dev*,unsigned int,int,int ) ;
 int uniphier_conf_pin_drive_set (struct pinctrl_dev*,unsigned int,int ) ;
 int uniphier_conf_pin_input_enable (struct pinctrl_dev*,unsigned int,int ) ;

__attribute__((used)) static int uniphier_conf_pin_config_set(struct pinctrl_dev *pctldev,
     unsigned pin,
     unsigned long *configs,
     unsigned num_configs)
{
 int i, ret;

 for (i = 0; i < num_configs; i++) {
  enum pin_config_param param =
     pinconf_to_config_param(configs[i]);
  u32 arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 133:
  case 130:
  case 132:
  case 131:
   ret = uniphier_conf_pin_bias_set(pctldev, pin,
        param, arg);
   break;
  case 129:
   ret = uniphier_conf_pin_drive_set(pctldev, pin, arg);
   break;
  case 128:
   ret = uniphier_conf_pin_input_enable(pctldev, pin, arg);
   break;
  default:
   dev_err(pctldev->dev,
    "unsupported configuration parameter %u\n",
    param);
   return -EINVAL;
  }

  if (ret)
   return ret;
 }

 return 0;
}
