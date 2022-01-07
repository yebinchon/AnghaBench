
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_gpio_pad {unsigned int pullup; unsigned int power_source; unsigned int out_value; unsigned int strength; unsigned int atest; unsigned int analog_pass; unsigned int dtest_buffer; int input_enabled; int is_enabled; int buffer_type; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_gpio_pad* drv_data; } ;


 int EINVAL ;
 int PMIC_GPIO_OUT_BUF_CMOS ;
 int PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS ;
 int PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS ;
 unsigned int PMIC_GPIO_PULL_DISABLE ;
 unsigned int PMIC_GPIO_PULL_DOWN ;
 unsigned int PMIC_GPIO_PULL_UP_30 ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int pmic_gpio_config_get(struct pinctrl_dev *pctldev,
    unsigned int pin, unsigned long *config)
{
 unsigned param = pinconf_to_config_param(*config);
 struct pmic_gpio_pad *pad;
 unsigned arg;

 pad = pctldev->desc->pins[pin].drv_data;

 switch (param) {
 case 136:
  if (pad->buffer_type != PMIC_GPIO_OUT_BUF_CMOS)
   return -EINVAL;
  arg = 1;
  break;
 case 138:
  if (pad->buffer_type != PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS)
   return -EINVAL;
  arg = 1;
  break;
 case 137:
  if (pad->buffer_type != PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS)
   return -EINVAL;
  arg = 1;
  break;
 case 140:
  if (pad->pullup != PMIC_GPIO_PULL_DOWN)
   return -EINVAL;
  arg = 1;
  break;
 case 142:
  if (pad->pullup != PMIC_GPIO_PULL_DISABLE)
   return -EINVAL;
  arg = 1;
  break;
 case 139:
  if (pad->pullup != PMIC_GPIO_PULL_UP_30)
   return -EINVAL;
  arg = 1;
  break;
 case 141:
  if (pad->is_enabled)
   return -EINVAL;
  arg = 1;
  break;
 case 133:
  arg = pad->power_source;
  break;
 case 135:
  if (!pad->input_enabled)
   return -EINVAL;
  arg = 1;
  break;
 case 134:
  arg = pad->out_value;
  break;
 case 129:
  arg = pad->pullup;
  break;
 case 128:
  arg = pad->strength;
  break;
 case 131:
  arg = pad->atest;
  break;
 case 132:
  arg = pad->analog_pass;
  break;
 case 130:
  arg = pad->dtest_buffer;
  break;
 default:
  return -EINVAL;
 }

 *config = pinconf_to_config_packed(param, arg);
 return 0;
}
