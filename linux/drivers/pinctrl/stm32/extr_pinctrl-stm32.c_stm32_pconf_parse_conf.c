
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_pinctrl {int dev; } ;
struct stm32_gpio_bank {int dummy; } ;
struct pinctrl_gpio_range {int gc; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;







 int __stm32_gpio_set (struct stm32_gpio_bank*,int,int) ;
 int dev_err (int ,char*) ;
 struct stm32_gpio_bank* gpiochip_get_data (int ) ;
 struct stm32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct pinctrl_gpio_range* pinctrl_find_gpio_range_from_pin (struct pinctrl_dev*,unsigned int) ;
 int stm32_gpio_pin (unsigned int) ;
 int stm32_pconf_set_bias (struct stm32_gpio_bank*,int,int) ;
 int stm32_pconf_set_driving (struct stm32_gpio_bank*,int,int) ;
 int stm32_pconf_set_speed (struct stm32_gpio_bank*,int,int) ;
 int stm32_pmx_gpio_set_direction (struct pinctrl_dev*,struct pinctrl_gpio_range*,unsigned int,int) ;

__attribute__((used)) static int stm32_pconf_parse_conf(struct pinctrl_dev *pctldev,
  unsigned int pin, enum pin_config_param param,
  enum pin_config_param arg)
{
 struct stm32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pinctrl_gpio_range *range;
 struct stm32_gpio_bank *bank;
 int offset, ret = 0;

 range = pinctrl_find_gpio_range_from_pin(pctldev, pin);
 if (!range) {
  dev_err(pctl->dev, "No gpio range defined.\n");
  return -EINVAL;
 }

 bank = gpiochip_get_data(range->gc);
 offset = stm32_gpio_pin(pin);

 switch (param) {
 case 130:
  ret = stm32_pconf_set_driving(bank, offset, 0);
  break;
 case 131:
  ret = stm32_pconf_set_driving(bank, offset, 1);
  break;
 case 128:
  ret = stm32_pconf_set_speed(bank, offset, arg);
  break;
 case 134:
  ret = stm32_pconf_set_bias(bank, offset, 0);
  break;
 case 132:
  ret = stm32_pconf_set_bias(bank, offset, 1);
  break;
 case 133:
  ret = stm32_pconf_set_bias(bank, offset, 2);
  break;
 case 129:
  __stm32_gpio_set(bank, offset, arg);
  ret = stm32_pmx_gpio_set_direction(pctldev, range, pin, 0);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
