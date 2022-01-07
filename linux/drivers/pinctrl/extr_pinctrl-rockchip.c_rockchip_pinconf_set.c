
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rockchip_pinctrl {TYPE_1__* ctrl; } ;
struct rockchip_pin_bank {int pin_base; int gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int schmitt_calc_reg; int drv_calc_reg; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int _rockchip_pmx_gpio_set_direction (int *,int ,int) ;
 struct rockchip_pin_bank* pin_to_bank (struct rockchip_pinctrl*,unsigned int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rockchip_gpio_set (int *,int ,int ) ;
 int rockchip_pinconf_pull_valid (TYPE_1__*,int) ;
 int rockchip_set_drive_perpin (struct rockchip_pin_bank*,int ,int ) ;
 int rockchip_set_pull (struct rockchip_pin_bank*,int ,int) ;
 int rockchip_set_schmitt (struct rockchip_pin_bank*,int ,int ) ;

__attribute__((used)) static int rockchip_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
    unsigned long *configs, unsigned num_configs)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
 enum pin_config_param param;
 u32 arg;
 int i;
 int rc;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 134:
   rc = rockchip_set_pull(bank, pin - bank->pin_base,
    param);
   if (rc)
    return rc;
   break;
  case 131:
  case 133:
  case 132:
  case 135:
   if (!rockchip_pinconf_pull_valid(info->ctrl, param))
    return -ENOTSUPP;

   if (!arg)
    return -EINVAL;

   rc = rockchip_set_pull(bank, pin - bank->pin_base,
    param);
   if (rc)
    return rc;
   break;
  case 128:
   rockchip_gpio_set(&bank->gpio_chip,
       pin - bank->pin_base, arg);
   rc = _rockchip_pmx_gpio_set_direction(&bank->gpio_chip,
       pin - bank->pin_base, 0);
   if (rc)
    return rc;
   break;
  case 130:

   if (!info->ctrl->drv_calc_reg)
    return -ENOTSUPP;

   rc = rockchip_set_drive_perpin(bank,
      pin - bank->pin_base, arg);
   if (rc < 0)
    return rc;
   break;
  case 129:
   if (!info->ctrl->schmitt_calc_reg)
    return -ENOTSUPP;

   rc = rockchip_set_schmitt(bank,
        pin - bank->pin_base, arg);
   if (rc < 0)
    return rc;
   break;
  default:
   return -ENOTSUPP;
   break;
  }
 }

 return 0;
}
