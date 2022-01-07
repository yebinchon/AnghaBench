
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_mpp_state {int dummy; } ;
struct pmic_mpp_pad {int is_enabled; unsigned int pullup; unsigned int num_sources; unsigned int power_source; int input_enabled; int output_enabled; unsigned int out_value; unsigned int dtest; unsigned int drive_strength; unsigned int amux_input; unsigned int aout_level; int paired; scalar_t__ has_pullup; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_mpp_pad* drv_data; } ;


 int EINVAL ;







 unsigned int PMIC_MPP_AMUX_ROUTE_ABUS4 ;




 unsigned int PMIC_MPP_PULL_UP_0P6KOHM ;
 unsigned int PMIC_MPP_PULL_UP_10KOHM ;
 unsigned int PMIC_MPP_PULL_UP_30KOHM ;
 unsigned int PMIC_MPP_PULL_UP_OPEN ;
 int PMIC_MPP_REG_AIN_CTL ;
 unsigned int PMIC_MPP_REG_AIN_ROUTE_MASK ;
 int PMIC_MPP_REG_AOUT_CTL ;
 int PMIC_MPP_REG_DIG_PULL_CTL ;
 int PMIC_MPP_REG_DIG_VIN_CTL ;
 int PMIC_MPP_REG_EN_CTL ;
 unsigned int PMIC_MPP_REG_MASTER_EN_SHIFT ;
 unsigned int PMIC_MPP_REG_PULL_SHIFT ;
 int PMIC_MPP_REG_SINK_CTL ;
 unsigned int PMIC_MPP_REG_VIN_SHIFT ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pmic_mpp_state* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmic_mpp_write (struct pmic_mpp_state*,struct pmic_mpp_pad*,int ,unsigned int) ;
 int pmic_mpp_write_mode_ctl (struct pmic_mpp_state*,struct pmic_mpp_pad*) ;

__attribute__((used)) static int pmic_mpp_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
          unsigned long *configs, unsigned nconfs)
{
 struct pmic_mpp_state *state = pinctrl_dev_get_drvdata(pctldev);
 struct pmic_mpp_pad *pad;
 unsigned param, arg;
 unsigned int val;
 int i, ret;

 pad = pctldev->desc->pins[pin].drv_data;


 pad->is_enabled = 1;

 for (i = 0; i < nconfs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 138:
   pad->pullup = PMIC_MPP_PULL_UP_OPEN;
   break;
  case 136:
   switch (arg) {
   case 600:
    pad->pullup = PMIC_MPP_PULL_UP_0P6KOHM;
    break;
   case 10000:
    pad->pullup = PMIC_MPP_PULL_UP_10KOHM;
    break;
   case 30000:
    pad->pullup = PMIC_MPP_PULL_UP_30KOHM;
    break;
   default:
    return -EINVAL;
   }
   break;
  case 137:
   pad->is_enabled = 0;
   break;
  case 132:
   if (arg >= pad->num_sources)
    return -EINVAL;
   pad->power_source = arg;
   break;
  case 134:
   pad->input_enabled = arg ? 1 : 0;
   break;
  case 133:
   pad->output_enabled = 1;
   pad->out_value = arg;
   break;
  case 129:
   pad->dtest = arg;
   break;
  case 135:
   pad->drive_strength = arg;
   break;
  case 131:
   if (arg >= PMIC_MPP_AMUX_ROUTE_ABUS4)
    return -EINVAL;
   pad->amux_input = arg;
   break;
  case 130:
   pad->aout_level = arg;
   break;
  case 128:
   pad->paired = !!arg;
   break;
  default:
   return -EINVAL;
  }
 }

 val = pad->power_source << PMIC_MPP_REG_VIN_SHIFT;

 ret = pmic_mpp_write(state, pad, PMIC_MPP_REG_DIG_VIN_CTL, val);
 if (ret < 0)
  return ret;

 if (pad->has_pullup) {
  val = pad->pullup << PMIC_MPP_REG_PULL_SHIFT;

  ret = pmic_mpp_write(state, pad, PMIC_MPP_REG_DIG_PULL_CTL,
         val);
  if (ret < 0)
   return ret;
 }

 val = pad->amux_input & PMIC_MPP_REG_AIN_ROUTE_MASK;

 ret = pmic_mpp_write(state, pad, PMIC_MPP_REG_AIN_CTL, val);
 if (ret < 0)
  return ret;

 ret = pmic_mpp_write(state, pad, PMIC_MPP_REG_AOUT_CTL, pad->aout_level);
 if (ret < 0)
  return ret;

 ret = pmic_mpp_write_mode_ctl(state, pad);
 if (ret < 0)
  return ret;

 ret = pmic_mpp_write(state, pad, PMIC_MPP_REG_SINK_CTL, pad->drive_strength);
 if (ret < 0)
  return ret;

 val = pad->is_enabled << PMIC_MPP_REG_MASTER_EN_SHIFT;

 return pmic_mpp_write(state, pad, PMIC_MPP_REG_EN_CTL, val);
}
