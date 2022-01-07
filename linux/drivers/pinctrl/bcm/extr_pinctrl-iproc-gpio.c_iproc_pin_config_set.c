
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct iproc_gpio {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;




 int dev_err (int ,char*) ;
 int iproc_gpio_set_pull (struct iproc_gpio*,unsigned int,int,int) ;
 int iproc_gpio_set_strength (struct iproc_gpio*,unsigned int,int ) ;
 unsigned int iproc_pin_to_gpio (unsigned int) ;
 scalar_t__ iproc_pinconf_param_is_disabled (struct iproc_gpio*,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct iproc_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int iproc_pin_config_set(struct pinctrl_dev *pctldev, unsigned pin,
     unsigned long *configs, unsigned num_configs)
{
 struct iproc_gpio *chip = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 arg;
 unsigned i, gpio = iproc_pin_to_gpio(pin);
 int ret = -ENOTSUPP;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);

  if (iproc_pinconf_param_is_disabled(chip, param))
   return -ENOTSUPP;

  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 131:
   ret = iproc_gpio_set_pull(chip, gpio, 1, 0);
   if (ret < 0)
    goto out;
   break;

  case 129:
   ret = iproc_gpio_set_pull(chip, gpio, 0, 1);
   if (ret < 0)
    goto out;
   break;

  case 130:
   ret = iproc_gpio_set_pull(chip, gpio, 0, 0);
   if (ret < 0)
    goto out;
   break;

  case 128:
   ret = iproc_gpio_set_strength(chip, gpio, arg);
   if (ret < 0)
    goto out;
   break;

  default:
   dev_err(chip->dev, "invalid configuration\n");
   return -ENOTSUPP;
  }
 }

out:
 return ret;
}
