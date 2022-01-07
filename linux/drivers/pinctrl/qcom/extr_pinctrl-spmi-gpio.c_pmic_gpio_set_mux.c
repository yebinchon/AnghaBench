
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmic_gpio_state {int dummy; } ;
struct pmic_gpio_pad {unsigned int function; int atest; unsigned int out_value; unsigned int is_enabled; scalar_t__ lv_mv_type; scalar_t__ output_enabled; scalar_t__ input_enabled; scalar_t__ analog_pass; } ;
struct pinctrl_dev {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {struct pmic_gpio_pad* drv_data; } ;


 int EINVAL ;
 unsigned int PMIC_GPIO_FUNC_INDEX_DTEST1 ;
 unsigned int PMIC_GPIO_FUNC_INDEX_DTEST4 ;
 unsigned int PMIC_GPIO_FUNC_INDEX_FUNC3 ;
 unsigned int PMIC_GPIO_FUNC_INDEX_FUNC4 ;
 unsigned int PMIC_GPIO_LV_MV_OUTPUT_INVERT_SHIFT ;
 unsigned int PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK ;
 unsigned int PMIC_GPIO_MODE_ANALOG_PASS_THRU ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_INPUT ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_INPUT_OUTPUT ;
 unsigned int PMIC_GPIO_MODE_DIGITAL_OUTPUT ;
 int PMIC_GPIO_REG_EN_CTL ;
 int PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL ;
 int PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL ;
 unsigned int PMIC_GPIO_REG_MASTER_EN_SHIFT ;
 int PMIC_GPIO_REG_MODE_CTL ;
 unsigned int PMIC_GPIO_REG_MODE_DIR_SHIFT ;
 unsigned int PMIC_GPIO_REG_MODE_FUNCTION_SHIFT ;
 unsigned int PMIC_GPIO_REG_MODE_VALUE_SHIFT ;
 struct pmic_gpio_state* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmic_gpio_write (struct pmic_gpio_state*,struct pmic_gpio_pad*,int ,unsigned int) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int pmic_gpio_set_mux(struct pinctrl_dev *pctldev, unsigned function,
    unsigned pin)
{
 struct pmic_gpio_state *state = pinctrl_dev_get_drvdata(pctldev);
 struct pmic_gpio_pad *pad;
 unsigned int val;
 int ret;

 if (function > PMIC_GPIO_FUNC_INDEX_DTEST4) {
  pr_err("function: %d is not defined\n", function);
  return -EINVAL;
 }

 pad = pctldev->desc->pins[pin].drv_data;




 if (!pad->lv_mv_type) {
  if (function == PMIC_GPIO_FUNC_INDEX_FUNC3 ||
    function == PMIC_GPIO_FUNC_INDEX_FUNC4) {
   pr_err("LV/MV subtype doesn't have func3/func4\n");
   return -EINVAL;
  }
  if (function >= PMIC_GPIO_FUNC_INDEX_DTEST1)
   function -= (PMIC_GPIO_FUNC_INDEX_DTEST1 -
     PMIC_GPIO_FUNC_INDEX_FUNC3);
 }

 pad->function = function;

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

 return pmic_gpio_write(state, pad, PMIC_GPIO_REG_EN_CTL, val);
}
