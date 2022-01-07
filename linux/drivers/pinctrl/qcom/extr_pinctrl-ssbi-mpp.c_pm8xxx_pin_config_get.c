
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_pin_data {unsigned int pullup; unsigned int high_z; unsigned int input; unsigned int output_value; unsigned int power_source; unsigned int drive_strength; unsigned int dtest; unsigned int amux; unsigned int aout_level; unsigned int paired; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_mpp {TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int EINVAL ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pm8xxx_mpp* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int pm8xxx_pin_config_get(struct pinctrl_dev *pctldev,
     unsigned int offset,
     unsigned long *config)
{
 struct pm8xxx_mpp *pctrl = pinctrl_dev_get_drvdata(pctldev);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 unsigned param = pinconf_to_config_param(*config);
 unsigned arg;

 switch (param) {
 case 136:
  arg = pin->pullup;
  break;
 case 137:
  arg = pin->high_z;
  break;
 case 134:
  arg = pin->input;
  break;
 case 133:
  arg = pin->output_value;
  break;
 case 132:
  arg = pin->power_source;
  break;
 case 135:
  arg = pin->drive_strength;
  break;
 case 129:
  arg = pin->dtest;
  break;
 case 130:
  arg = pin->amux;
  break;
 case 131:
  arg = pin->aout_level;
  break;
 case 128:
  arg = pin->paired;
  break;
 default:
  return -EINVAL;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
