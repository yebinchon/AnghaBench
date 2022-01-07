
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct iproc_gpio {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;




 int iproc_gpio_get_pull (struct iproc_gpio*,unsigned int,int*,int*) ;
 int iproc_gpio_get_strength (struct iproc_gpio*,unsigned int,int *) ;
 unsigned int iproc_pin_to_gpio (unsigned int) ;
 scalar_t__ iproc_pinconf_param_is_disabled (struct iproc_gpio*,int) ;
 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;
 struct iproc_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int iproc_pin_config_get(struct pinctrl_dev *pctldev, unsigned pin,
     unsigned long *config)
{
 struct iproc_gpio *chip = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned gpio = iproc_pin_to_gpio(pin);
 u16 arg;
 bool disable, pull_up;
 int ret;

 if (iproc_pinconf_param_is_disabled(chip, param))
  return -ENOTSUPP;

 switch (param) {
 case 131:
  iproc_gpio_get_pull(chip, gpio, &disable, &pull_up);
  if (disable)
   return 0;
  else
   return -EINVAL;

 case 129:
  iproc_gpio_get_pull(chip, gpio, &disable, &pull_up);
  if (!disable && pull_up)
   return 0;
  else
   return -EINVAL;

 case 130:
  iproc_gpio_get_pull(chip, gpio, &disable, &pull_up);
  if (!disable && !pull_up)
   return 0;
  else
   return -EINVAL;

 case 128:
  ret = iproc_gpio_get_strength(chip, gpio, &arg);
  if (ret)
   return ret;
  *config = pinconf_to_config_packed(param, arg);

  return 0;

 default:
  return -ENOTSUPP;
 }

 return -ENOTSUPP;
}
