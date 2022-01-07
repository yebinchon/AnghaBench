
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pm8xxx_pin_data {unsigned int pullup; int high_z; int input; int output; int output_value; unsigned int power_source; unsigned int drive_strength; unsigned int dtest; unsigned int amux; unsigned int aout_level; int paired; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct pm8xxx_mpp {int dev; TYPE_2__ desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_3__ {struct pm8xxx_pin_data* drv_data; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pm8xxx_mpp* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pm8xxx_mpp_update (struct pm8xxx_mpp*,struct pm8xxx_pin_data*) ;

__attribute__((used)) static int pm8xxx_pin_config_set(struct pinctrl_dev *pctldev,
     unsigned int offset,
     unsigned long *configs,
     unsigned num_configs)
{
 struct pm8xxx_mpp *pctrl = pinctrl_dev_get_drvdata(pctldev);
 struct pm8xxx_pin_data *pin = pctrl->desc.pins[offset].drv_data;
 unsigned param;
 unsigned arg;
 unsigned i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 136:
   pin->pullup = arg;
   break;
  case 137:
   pin->high_z = 1;
   break;
  case 134:
   pin->input = 1;
   break;
  case 133:
   pin->output = 1;
   pin->output_value = !!arg;
   break;
  case 132:
   pin->power_source = arg;
   break;
  case 135:
   pin->drive_strength = arg;
   break;
  case 129:
   pin->dtest = arg;
   break;
  case 130:
   pin->amux = arg;
   break;
  case 131:
   pin->aout_level = arg;
   break;
  case 128:
   pin->paired = !!arg;
   break;
  default:
   dev_err(pctrl->dev,
    "unsupported config parameter: %x\n",
    param);
   return -EINVAL;
  }
 }

 pm8xxx_mpp_update(pctrl, pin);

 return 0;
}
