
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_mpp_pad {unsigned int power_source; unsigned int out_value; unsigned int dtest; unsigned int amux_input; unsigned int drive_strength; unsigned int aout_level; int paired; int input_enabled; int is_enabled; int pullup; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_mpp_pad* drv_data; } ;


 int EINVAL ;
 int PMIC_MPP_PULL_UP_OPEN ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;

__attribute__((used)) static int pmic_mpp_config_get(struct pinctrl_dev *pctldev,
          unsigned int pin, unsigned long *config)
{
 unsigned param = pinconf_to_config_param(*config);
 struct pmic_mpp_pad *pad;
 unsigned arg = 0;

 pad = pctldev->desc->pins[pin].drv_data;

 switch (param) {
 case 141:
  if (pad->pullup != PMIC_MPP_PULL_UP_OPEN)
   return -EINVAL;
  arg = 1;
  break;
 case 139:
  switch (pad->pullup) {
  case 130:
   arg = 600;
   break;
  case 129:
   arg = 10000;
   break;
  case 128:
   arg = 30000;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 140:
  if (pad->is_enabled)
   return -EINVAL;
  arg = 1;
  break;
 case 135:
  arg = pad->power_source;
  break;
 case 137:
  if (!pad->input_enabled)
   return -EINVAL;
  arg = 1;
  break;
 case 136:
  arg = pad->out_value;
  break;
 case 132:
  arg = pad->dtest;
  break;
 case 134:
  arg = pad->amux_input;
  break;
 case 131:
  if (!pad->paired)
   return -EINVAL;
  arg = 1;
  break;
 case 138:
  arg = pad->drive_strength;
  break;
 case 133:
  arg = pad->aout_level;
  break;
 default:
  return -EINVAL;
 }


 *config = pinconf_to_config_packed(param, arg);
 return 0;
}
