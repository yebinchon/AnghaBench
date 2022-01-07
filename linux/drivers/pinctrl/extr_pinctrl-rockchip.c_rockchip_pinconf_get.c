
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rockchip_pinctrl {TYPE_1__* ctrl; } ;
struct rockchip_pin_bank {int pin_base; int gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int schmitt_calc_reg; int drv_calc_reg; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int RK_FUNC_GPIO ;
 struct rockchip_pin_bank* pin_to_bank (struct rockchip_pinctrl*,unsigned int) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct rockchip_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int rockchip_get_drive_perpin (struct rockchip_pin_bank*,int ) ;
 int rockchip_get_mux (struct rockchip_pin_bank*,int ) ;
 int rockchip_get_pull (struct rockchip_pin_bank*,int ) ;
 int rockchip_get_schmitt (struct rockchip_pin_bank*,int ) ;
 int rockchip_gpio_get (int *,int ) ;
 int rockchip_pinconf_pull_valid (TYPE_1__*,int) ;

__attribute__((used)) static int rockchip_pinconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
       unsigned long *config)
{
 struct rockchip_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct rockchip_pin_bank *bank = pin_to_bank(info, pin);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u16 arg;
 int rc;

 switch (param) {
 case 134:
  if (rockchip_get_pull(bank, pin - bank->pin_base) != param)
   return -EINVAL;

  arg = 0;
  break;
 case 131:
 case 133:
 case 132:
 case 135:
  if (!rockchip_pinconf_pull_valid(info->ctrl, param))
   return -ENOTSUPP;

  if (rockchip_get_pull(bank, pin - bank->pin_base) != param)
   return -EINVAL;

  arg = 1;
  break;
 case 128:
  rc = rockchip_get_mux(bank, pin - bank->pin_base);
  if (rc != RK_FUNC_GPIO)
   return -EINVAL;

  rc = rockchip_gpio_get(&bank->gpio_chip, pin - bank->pin_base);
  if (rc < 0)
   return rc;

  arg = rc ? 1 : 0;
  break;
 case 130:

  if (!info->ctrl->drv_calc_reg)
   return -ENOTSUPP;

  rc = rockchip_get_drive_perpin(bank, pin - bank->pin_base);
  if (rc < 0)
   return rc;

  arg = rc;
  break;
 case 129:
  if (!info->ctrl->schmitt_calc_reg)
   return -ENOTSUPP;

  rc = rockchip_get_schmitt(bank, pin - bank->pin_base);
  if (rc < 0)
   return rc;

  arg = rc;
  break;
 default:
  return -ENOTSUPP;
  break;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
