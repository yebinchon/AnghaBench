
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct nsp_gpio {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;




 int nsp_gpio_get_pull (struct nsp_gpio*,unsigned int,int*,int*) ;
 int nsp_gpio_get_strength (struct nsp_gpio*,unsigned int,int *) ;
 unsigned int nsp_pin_to_gpio (unsigned int) ;
 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;
 struct nsp_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nsp_pin_config_get(struct pinctrl_dev *pctldev, unsigned pin,
         unsigned long *config)
{
 struct nsp_gpio *chip = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned int gpio;
 u16 arg = 0;
 bool pull_up, pull_down;
 int ret;

 gpio = nsp_pin_to_gpio(pin);
 switch (param) {
 case 131:
  nsp_gpio_get_pull(chip, gpio, &pull_up, &pull_down);
  if ((pull_up == 0) && (pull_down == 0))
   return 0;
  else
   return -EINVAL;

 case 129:
  nsp_gpio_get_pull(chip, gpio, &pull_up, &pull_down);
  if (pull_up)
   return 0;
  else
   return -EINVAL;

 case 130:
  nsp_gpio_get_pull(chip, gpio, &pull_up, &pull_down);
  if (pull_down)
   return 0;
  else
   return -EINVAL;

 case 128:
  ret = nsp_gpio_get_strength(chip, gpio, &arg);
  if (ret)
   return ret;
  *config = pinconf_to_config_packed(param, arg);
  return 0;

 default:
  return -ENOTSUPP;
 }
}
