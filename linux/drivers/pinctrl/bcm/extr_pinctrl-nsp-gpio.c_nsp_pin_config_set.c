
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct nsp_gpio {int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int ENOTSUPP ;





 int dev_err (int ,char*) ;
 int nsp_gpio_set_pull (struct nsp_gpio*,unsigned int,int,int) ;
 int nsp_gpio_set_slew (struct nsp_gpio*,unsigned int,int ) ;
 int nsp_gpio_set_strength (struct nsp_gpio*,unsigned int,int ) ;
 unsigned int nsp_pin_to_gpio (unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct nsp_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int nsp_pin_config_set(struct pinctrl_dev *pctldev, unsigned pin,
         unsigned long *configs, unsigned num_configs)
{
 struct nsp_gpio *chip = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param;
 u32 arg;
 unsigned int i, gpio;
 int ret = -ENOTSUPP;

 gpio = nsp_pin_to_gpio(pin);
 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 132:
   ret = nsp_gpio_set_pull(chip, gpio, 0, 0);
   if (ret < 0)
    goto out;
   break;

  case 130:
   ret = nsp_gpio_set_pull(chip, gpio, 1, 0);
   if (ret < 0)
    goto out;
   break;

  case 131:
   ret = nsp_gpio_set_pull(chip, gpio, 0, 1);
   if (ret < 0)
    goto out;
   break;

  case 129:
   ret = nsp_gpio_set_strength(chip, gpio, arg);
   if (ret < 0)
    goto out;
   break;

  case 128:
   ret = nsp_gpio_set_slew(chip, gpio, arg);
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
