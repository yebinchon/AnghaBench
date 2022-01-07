
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_gpio_state {int dummy; } ;
struct pmic_gpio_pad {int is_enabled; unsigned int buffer_type; unsigned int pullup; unsigned int num_sources; unsigned int power_source; int input_enabled; int output_enabled; unsigned int out_value; unsigned int strength; unsigned int atest; int analog_pass; unsigned int dtest_buffer; unsigned int function; scalar_t__ lv_mv_type; int have_buffer; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_gpio_pad* drv_data; } ;


 unsigned int BIT (int) ;
 int EINVAL ;
 unsigned int PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN ;
 unsigned int PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT ;
 unsigned int PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK ;
 unsigned int PMIC_GPIO_MODE_ANALOG_PASS_THRU ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_INPUT ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_OUTPUT ;
 unsigned int PMIC_GPIO_OUT_BUF_CMOS ;
 unsigned int PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS ;
 unsigned int PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS ;
 void* PMIC_GPIO_PULL_DISABLE ;
 unsigned int PMIC_GPIO_PULL_DOWN ;
 unsigned int PMIC_GPIO_PULL_UP_1P5_30 ;
 unsigned int PMIC_GPIO_PULL_UP_30 ;
 int PMIC_GPIO_REG_DIG_IN_CTL ;
 int PMIC_GPIO_REG_DIG_OUT_CTL ;
 int PMIC_GPIO_REG_DIG_PULL_CTL ;
 int PMIC_GPIO_REG_DIG_VIN_CTL ;
 int PMIC_GPIO_REG_EN_CTL ;
 int PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL ;
 int PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL ;
 unsigned int PMIC_GPIO_REG_MASTER_EN_SHIFT ;
 int PMIC_GPIO_REG_MODE_CTL ;
 unsigned int PMIC_GPIO_REG_MODE_DIR_SHIFT ;
 unsigned int PMIC_GPIO_REG_MODE_FUNCTION_SHIFT ;
 unsigned int PMIC_GPIO_REG_MODE_VALUE_SHIFT ;
 unsigned int PMIC_GPIO_REG_OUT_STRENGTH_SHIFT ;
 unsigned int PMIC_GPIO_REG_OUT_TYPE_SHIFT ;
 unsigned int PMIC_GPIO_REG_PULL_SHIFT ;
 unsigned int PMIC_GPIO_REG_VIN_SHIFT ;
 unsigned int PMIC_GPIO_STRENGTH_LOW ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct pmic_gpio_state* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmic_gpio_write (struct pmic_gpio_state*,struct pmic_gpio_pad*,int ,unsigned int) ;

__attribute__((used)) static int pmic_gpio_config_set(struct pinctrl_dev *pctldev, unsigned int pin,
    unsigned long *configs, unsigned nconfs)
{
 struct pmic_gpio_state *state = pinctrl_dev_get_drvdata(pctldev);
 struct pmic_gpio_pad *pad;
 unsigned param, arg;
 unsigned int val;
 int i, ret;

 pad = pctldev->desc->pins[pin].drv_data;

 pad->is_enabled = 1;
 for (i = 0; i < nconfs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {
  case 136:
   pad->buffer_type = PMIC_GPIO_OUT_BUF_CMOS;
   break;
  case 138:
   if (!pad->have_buffer)
    return -EINVAL;
   pad->buffer_type = PMIC_GPIO_OUT_BUF_OPEN_DRAIN_NMOS;
   break;
  case 137:
   if (!pad->have_buffer)
    return -EINVAL;
   pad->buffer_type = PMIC_GPIO_OUT_BUF_OPEN_DRAIN_PMOS;
   break;
  case 142:
   pad->pullup = PMIC_GPIO_PULL_DISABLE;
   break;
  case 139:
   pad->pullup = PMIC_GPIO_PULL_UP_30;
   break;
  case 140:
   if (arg)
    pad->pullup = PMIC_GPIO_PULL_DOWN;
   else
    pad->pullup = PMIC_GPIO_PULL_DISABLE;
   break;
  case 141:
   pad->is_enabled = 0;
   break;
  case 133:
   if (arg >= pad->num_sources)
    return -EINVAL;
   pad->power_source = arg;
   break;
  case 135:
   pad->input_enabled = arg ? 1 : 0;
   break;
  case 134:
   pad->output_enabled = 1;
   pad->out_value = arg;
   break;
  case 129:
   if (arg > PMIC_GPIO_PULL_UP_1P5_30)
    return -EINVAL;
   pad->pullup = arg;
   break;
  case 128:
   if (arg > PMIC_GPIO_STRENGTH_LOW)
    return -EINVAL;
   pad->strength = arg;
   break;
  case 131:
   if (!pad->lv_mv_type || arg > 4)
    return -EINVAL;
   pad->atest = arg;
   break;
  case 132:
   if (!pad->lv_mv_type)
    return -EINVAL;
   pad->analog_pass = 1;
   break;
  case 130:
   if (arg > 4)
    return -EINVAL;
   pad->dtest_buffer = arg;
   break;
  default:
   return -EINVAL;
  }
 }

 val = pad->power_source << PMIC_GPIO_REG_VIN_SHIFT;

 ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_DIG_VIN_CTL, val);
 if (ret < 0)
  return ret;

 val = pad->pullup << PMIC_GPIO_REG_PULL_SHIFT;

 ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_DIG_PULL_CTL, val);
 if (ret < 0)
  return ret;

 val = pad->buffer_type << PMIC_GPIO_REG_OUT_TYPE_SHIFT;
 val |= pad->strength << PMIC_GPIO_REG_OUT_STRENGTH_SHIFT;

 ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_DIG_OUT_CTL, val);
 if (ret < 0)
  return ret;

 if (pad->dtest_buffer == 0) {
  val = 0;
 } else {
  if (pad->lv_mv_type) {
   val = pad->dtest_buffer - 1;
   val |= PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN;
  } else {
   val = BIT(pad->dtest_buffer - 1);
  }
 }
 ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_DIG_IN_CTL, val);
 if (ret < 0)
  return ret;

 if (pad->analog_pass)
  val = PMIC_GPIO_MODE_ANALOG_PASS_THRU;
 else if (pad->output_enabled && pad->input_enabled)
  val = PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT;
 else if (pad->output_enabled)
  val = PMIC_GPIO_MODE_DIGITAL_OUTPUT;
 else
  val = PMIC_GPIO_MODE_DIGITAL_INPUT;

 if (pad->lv_mv_type) {
  ret = pmic_gpio_write(state, pad,
    PMIC_GPIO_REG_MODE_CTL, val);
  if (ret < 0)
   return ret;

  val = pad->atest - 1;
  ret = pmic_gpio_write(state, pad,
    PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL, val);
  if (ret < 0)
   return ret;

  val = pad->out_value
   << PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT;
  val |= pad->function
   & PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK;
  ret = pmic_gpio_write(state, pad,
   PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL, val);
  if (ret < 0)
   return ret;
 } else {
  val = val << PMIC_GPIO_REG_MODE_DIR_SHIFT;
  val |= pad->function << PMIC_GPIO_REG_MODE_FUNCTION_SHIFT;
  val |= pad->out_value & PMIC_GPIO_REG_MODE_VALUE_SHIFT;

  ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_MODE_CTL, val);
  if (ret < 0)
   return ret;
 }

 val = pad->is_enabled << PMIC_GPIO_REG_MASTER_EN_SHIFT;

 ret = pmic_gpio_write(state, pad, PMIC_GPIO_REG_EN_CTL, val);

 return ret;
}
