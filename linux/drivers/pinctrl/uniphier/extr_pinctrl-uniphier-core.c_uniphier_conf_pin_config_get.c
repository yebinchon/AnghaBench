
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;





 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;
 int uniphier_conf_pin_bias_get (struct pinctrl_dev*,unsigned int,int) ;
 int uniphier_conf_pin_drive_get (struct pinctrl_dev*,unsigned int,int *) ;
 int uniphier_conf_pin_input_enable_get (struct pinctrl_dev*,unsigned int) ;

__attribute__((used)) static int uniphier_conf_pin_config_get(struct pinctrl_dev *pctldev,
     unsigned pin,
     unsigned long *configs)
{
 enum pin_config_param param = pinconf_to_config_param(*configs);
 bool has_arg = 0;
 u32 arg;
 int ret;

 switch (param) {
 case 132:
 case 130:
 case 131:
  ret = uniphier_conf_pin_bias_get(pctldev, pin, param);
  break;
 case 129:
  ret = uniphier_conf_pin_drive_get(pctldev, pin, &arg);
  has_arg = 1;
  break;
 case 128:
  ret = uniphier_conf_pin_input_enable_get(pctldev, pin);
  break;
 default:

  ret = -EINVAL;
  break;
 }

 if (ret == 0 && has_arg)
  *configs = pinconf_to_config_packed(param, arg);

 return ret;
}
