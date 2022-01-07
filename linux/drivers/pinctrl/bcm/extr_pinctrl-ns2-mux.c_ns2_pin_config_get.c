
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_6__ {int base; } ;
struct ns2_pin {TYPE_3__ pin_conf; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_5__ {TYPE_1__* pins; } ;
struct TYPE_4__ {struct ns2_pin* drv_data; } ;


 int EINVAL ;
 int ENOTSUPP ;






 int ns2_pin_get_enable (struct pinctrl_dev*,unsigned int) ;
 int ns2_pin_get_pull (struct pinctrl_dev*,unsigned int,int*,int*) ;
 int ns2_pin_get_slew (struct pinctrl_dev*,unsigned int,int *) ;
 int ns2_pin_get_strength (struct pinctrl_dev*,unsigned int,int *) ;
 unsigned long pinconf_to_config_packed (int,int ) ;
 int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int ns2_pin_config_get(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *config)
{
 struct ns2_pin *pin_data = pctldev->desc->pins[pin].drv_data;
 enum pin_config_param param = pinconf_to_config_param(*config);
 bool pull_up, pull_down;
 u16 arg = 0;
 int ret;

 if (pin_data->pin_conf.base == -1)
  return -ENOTSUPP;

 switch (param) {
 case 133:
  ns2_pin_get_pull(pctldev, pin, &pull_up, &pull_down);
  if ((pull_up == 0) && (pull_down == 0))
   return 0;
  else
   return -EINVAL;

 case 131:
  ns2_pin_get_pull(pctldev, pin, &pull_up, &pull_down);
  if (pull_up)
   return 0;
  else
   return -EINVAL;

 case 132:
  ns2_pin_get_pull(pctldev, pin, &pull_up, &pull_down);
  if (pull_down)
   return 0;
  else
   return -EINVAL;

 case 130:
  ret = ns2_pin_get_strength(pctldev, pin, &arg);
  if (ret)
   return ret;
  *config = pinconf_to_config_packed(param, arg);
  return 0;

 case 128:
  ret = ns2_pin_get_slew(pctldev, pin, &arg);
  if (ret)
   return ret;
  *config = pinconf_to_config_packed(param, arg);
  return 0;

 case 129:
  ret = ns2_pin_get_enable(pctldev, pin);
  if (ret)
   return 0;
  else
   return -EINVAL;

 default:
  return -ENOTSUPP;
 }
}
