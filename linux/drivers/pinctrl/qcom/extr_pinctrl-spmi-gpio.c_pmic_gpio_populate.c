
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_gpio_state {int dev; } ;
struct pmic_gpio_pad {int have_buffer; int num_sources; int lv_mv_type; int out_value; int function; int input_enabled; int output_enabled; int analog_pass; int power_source; int pullup; int dtest_buffer; int strength; int buffer_type; int atest; int is_enabled; int base; } ;


 int ENODEV ;
 int PMIC_GPIO_LV_MV_ANA_MUX_SEL_MASK ;
 int PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN ;
 int PMIC_GPIO_LV_MV_DIG_IN_DTEST_SEL_MASK ;
 int PMIC_GPIO_LV_MV_OUTPUT_INVERT ;
 int PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK ;




 int PMIC_GPIO_REG_DIG_IN_CTL ;
 int PMIC_GPIO_REG_DIG_OUT_CTL ;
 int PMIC_GPIO_REG_DIG_PULL_CTL ;
 int PMIC_GPIO_REG_DIG_VIN_CTL ;
 int PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL ;
 int PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL ;
 int PMIC_GPIO_REG_LV_MV_MODE_DIR_MASK ;
 int PMIC_GPIO_REG_MODE_CTL ;
 int PMIC_GPIO_REG_MODE_DIR_MASK ;
 int PMIC_GPIO_REG_MODE_DIR_SHIFT ;
 int PMIC_GPIO_REG_MODE_FUNCTION_MASK ;
 int PMIC_GPIO_REG_MODE_FUNCTION_SHIFT ;
 int PMIC_GPIO_REG_MODE_VALUE_SHIFT ;
 int PMIC_GPIO_REG_OUT_STRENGTH_MASK ;
 int PMIC_GPIO_REG_OUT_STRENGTH_SHIFT ;
 int PMIC_GPIO_REG_OUT_TYPE_MASK ;
 int PMIC_GPIO_REG_OUT_TYPE_SHIFT ;
 int PMIC_GPIO_REG_PULL_MASK ;
 int PMIC_GPIO_REG_PULL_SHIFT ;
 int PMIC_GPIO_REG_SUBTYPE ;
 int PMIC_GPIO_REG_TYPE ;
 int PMIC_GPIO_REG_VIN_MASK ;
 int PMIC_GPIO_REG_VIN_SHIFT ;






 int PMIC_GPIO_TYPE ;
 int dev_err (int ,char*,...) ;
 int ffs (int) ;
 int pmic_gpio_read (struct pmic_gpio_state*,struct pmic_gpio_pad*,int ) ;

__attribute__((used)) static int pmic_gpio_populate(struct pmic_gpio_state *state,
         struct pmic_gpio_pad *pad)
{
 int type, subtype, val, dir;

 type = pmic_gpio_read(state, pad, PMIC_GPIO_REG_TYPE);
 if (type < 0)
  return type;

 if (type != PMIC_GPIO_TYPE) {
  dev_err(state->dev, "incorrect block type 0x%x at 0x%x\n",
   type, pad->base);
  return -ENODEV;
 }

 subtype = pmic_gpio_read(state, pad, PMIC_GPIO_REG_SUBTYPE);
 if (subtype < 0)
  return subtype;

 switch (subtype) {
 case 131:
  pad->have_buffer = 1;

 case 133:
  pad->num_sources = 4;
  break;
 case 130:
  pad->have_buffer = 1;

 case 132:
  pad->num_sources = 8;
  break;
 case 129:
  pad->num_sources = 1;
  pad->have_buffer = 1;
  pad->lv_mv_type = 1;
  break;
 case 128:
  pad->num_sources = 2;
  pad->have_buffer = 1;
  pad->lv_mv_type = 1;
  break;
 default:
  dev_err(state->dev, "unknown GPIO type 0x%x\n", subtype);
  return -ENODEV;
 }

 if (pad->lv_mv_type) {
  val = pmic_gpio_read(state, pad,
    PMIC_GPIO_REG_LV_MV_DIG_OUT_SOURCE_CTL);
  if (val < 0)
   return val;

  pad->out_value = !!(val & PMIC_GPIO_LV_MV_OUTPUT_INVERT);
  pad->function = val & PMIC_GPIO_LV_MV_OUTPUT_SOURCE_SEL_MASK;

  val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_MODE_CTL);
  if (val < 0)
   return val;

  dir = val & PMIC_GPIO_REG_LV_MV_MODE_DIR_MASK;
 } else {
  val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_MODE_CTL);
  if (val < 0)
   return val;

  pad->out_value = val & PMIC_GPIO_REG_MODE_VALUE_SHIFT;

  dir = val >> PMIC_GPIO_REG_MODE_DIR_SHIFT;
  dir &= PMIC_GPIO_REG_MODE_DIR_MASK;
  pad->function = val >> PMIC_GPIO_REG_MODE_FUNCTION_SHIFT;
  pad->function &= PMIC_GPIO_REG_MODE_FUNCTION_MASK;
 }

 switch (dir) {
 case 136:
  pad->input_enabled = 1;
  pad->output_enabled = 0;
  break;
 case 134:
  pad->input_enabled = 0;
  pad->output_enabled = 1;
  break;
 case 135:
  pad->input_enabled = 1;
  pad->output_enabled = 1;
  break;
 case 137:
  if (!pad->lv_mv_type)
   return -ENODEV;
  pad->analog_pass = 1;
  break;
 default:
  dev_err(state->dev, "unknown GPIO direction\n");
  return -ENODEV;
 }

 val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_DIG_VIN_CTL);
 if (val < 0)
  return val;

 pad->power_source = val >> PMIC_GPIO_REG_VIN_SHIFT;
 pad->power_source &= PMIC_GPIO_REG_VIN_MASK;

 val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_DIG_PULL_CTL);
 if (val < 0)
  return val;

 pad->pullup = val >> PMIC_GPIO_REG_PULL_SHIFT;
 pad->pullup &= PMIC_GPIO_REG_PULL_MASK;

 val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_DIG_IN_CTL);
 if (val < 0)
  return val;

 if (pad->lv_mv_type && (val & PMIC_GPIO_LV_MV_DIG_IN_DTEST_EN))
  pad->dtest_buffer =
   (val & PMIC_GPIO_LV_MV_DIG_IN_DTEST_SEL_MASK) + 1;
 else if (!pad->lv_mv_type)
  pad->dtest_buffer = ffs(val);
 else
  pad->dtest_buffer = 0;

 val = pmic_gpio_read(state, pad, PMIC_GPIO_REG_DIG_OUT_CTL);
 if (val < 0)
  return val;

 pad->strength = val >> PMIC_GPIO_REG_OUT_STRENGTH_SHIFT;
 pad->strength &= PMIC_GPIO_REG_OUT_STRENGTH_MASK;

 pad->buffer_type = val >> PMIC_GPIO_REG_OUT_TYPE_SHIFT;
 pad->buffer_type &= PMIC_GPIO_REG_OUT_TYPE_MASK;

 if (pad->lv_mv_type) {
  val = pmic_gpio_read(state, pad,
    PMIC_GPIO_REG_LV_MV_ANA_PASS_THRU_SEL);
  if (val < 0)
   return val;
  pad->atest = (val & PMIC_GPIO_LV_MV_ANA_MUX_SEL_MASK) + 1;
 }


 pad->is_enabled = 1;
 return 0;
}
