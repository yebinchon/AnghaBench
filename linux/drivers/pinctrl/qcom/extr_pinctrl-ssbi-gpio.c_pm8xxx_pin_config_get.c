
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_pin_data {unsigned int pull_up_strength; int mode; unsigned int output_value; unsigned int power_source; unsigned int output_strength; int open_drain; int disable; int bias; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_gpio {TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int EINVAL ;
 int PM8XXX_GPIO_BIAS_NP ;
 int PM8XXX_GPIO_BIAS_PD ;
 int PM8XXX_GPIO_BIAS_PU_1P5_30 ;
 int PM8XXX_GPIO_MODE_INPUT ;
 int PM8XXX_GPIO_MODE_OUTPUT ;


 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pm8xxx_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pm8xxx_pin_config_get(struct pinctrl_dev *pctldev,
     unsigned int offset,
     unsigned long *config)
{
 struct pm8xxx_gpio *pctrl = pinctrl_dev_get_drvdata(pctldev);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 unsigned param = pinconf_to_config_param(*config);
 unsigned arg;

 switch (param) {
 case 138:
  if (pin->bias != PM8XXX_GPIO_BIAS_NP)
   return -EINVAL;
  arg = 1;
  break;
 case 136:
  if (pin->bias != PM8XXX_GPIO_BIAS_PD)
   return -EINVAL;
  arg = 1;
  break;
 case 135:
  if (pin->bias > PM8XXX_GPIO_BIAS_PU_1P5_30)
   return -EINVAL;
  arg = 1;
  break;
 case 128:
  arg = pin->pull_up_strength;
  break;
 case 137:
  if (!pin->disable)
   return -EINVAL;
  arg = 1;
  break;
 case 132:
  if (pin->mode != PM8XXX_GPIO_MODE_INPUT)
   return -EINVAL;
  arg = 1;
  break;
 case 131:
  if (pin->mode & PM8XXX_GPIO_MODE_OUTPUT)
   arg = pin->output_value;
  else
   arg = 0;
  break;
 case 130:
  arg = pin->power_source;
  break;
 case 129:
  arg = pin->output_strength;
  break;
 case 133:
  if (pin->open_drain)
   return -EINVAL;
  arg = 1;
  break;
 case 134:
  if (!pin->open_drain)
   return -EINVAL;
  arg = 1;
  break;
 default:
  return -EINVAL;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
