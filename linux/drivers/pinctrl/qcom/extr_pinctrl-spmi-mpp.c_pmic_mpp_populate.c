
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_mpp_state {int dev; } ;
struct pmic_mpp_pad {int num_sources; int out_value; int input_enabled; int output_enabled; unsigned int dtest; int paired; int power_source; int pullup; int has_pullup; int amux_input; int drive_strength; int aout_level; int is_enabled; void* function; int base; } ;


 int ENODEV ;
 void* PMIC_MPP_ANALOG ;
 void* PMIC_MPP_DIGITAL ;







 int PMIC_MPP_REG_AIN_CTL ;
 int PMIC_MPP_REG_AIN_ROUTE_MASK ;
 int PMIC_MPP_REG_AIN_ROUTE_SHIFT ;
 int PMIC_MPP_REG_AOUT_CTL ;
 int PMIC_MPP_REG_DIG_PULL_CTL ;
 int PMIC_MPP_REG_DIG_VIN_CTL ;
 int PMIC_MPP_REG_EN_CTL ;
 int PMIC_MPP_REG_MODE_CTL ;
 int PMIC_MPP_REG_MODE_DIR_MASK ;
 int PMIC_MPP_REG_MODE_DIR_SHIFT ;
 unsigned int PMIC_MPP_REG_MODE_FUNCTION_MASK ;
 int PMIC_MPP_REG_MODE_FUNCTION_SHIFT ;
 int PMIC_MPP_REG_MODE_VALUE_MASK ;
 int PMIC_MPP_REG_PULL_MASK ;
 int PMIC_MPP_REG_PULL_SHIFT ;
 int PMIC_MPP_REG_SINK_CTL ;
 int PMIC_MPP_REG_SUBTYPE ;
 int PMIC_MPP_REG_TYPE ;
 int PMIC_MPP_REG_VIN_MASK ;
 int PMIC_MPP_REG_VIN_SHIFT ;
 unsigned int PMIC_MPP_SELECTOR_DTEST_FIRST ;
 unsigned int PMIC_MPP_SELECTOR_PAIRED ;
 void* PMIC_MPP_SINK ;






 int PMIC_MPP_TYPE ;
 int dev_err (int ,char*,...) ;
 int pmic_mpp_read (struct pmic_mpp_state*,struct pmic_mpp_pad*,int ) ;

__attribute__((used)) static int pmic_mpp_populate(struct pmic_mpp_state *state,
        struct pmic_mpp_pad *pad)
{
 int type, subtype, val, dir;
 unsigned int sel;

 type = pmic_mpp_read(state, pad, PMIC_MPP_REG_TYPE);
 if (type < 0)
  return type;

 if (type != PMIC_MPP_TYPE) {
  dev_err(state->dev, "incorrect block type 0x%x at 0x%x\n",
   type, pad->base);
  return -ENODEV;
 }

 subtype = pmic_mpp_read(state, pad, PMIC_MPP_REG_SUBTYPE);
 if (subtype < 0)
  return subtype;

 switch (subtype) {
 case 132:
 case 129:
 case 131:
 case 128:
 case 133:
  pad->num_sources = 4;
  break;
 case 130:
  pad->num_sources = 8;
  break;
 default:
  dev_err(state->dev, "unknown MPP type 0x%x at 0x%x\n",
   subtype, pad->base);
  return -ENODEV;
 }

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_MODE_CTL);
 if (val < 0)
  return val;

 pad->out_value = val & PMIC_MPP_REG_MODE_VALUE_MASK;

 dir = val >> PMIC_MPP_REG_MODE_DIR_SHIFT;
 dir &= PMIC_MPP_REG_MODE_DIR_MASK;

 switch (dir) {
 case 135:
  pad->input_enabled = 1;
  pad->output_enabled = 0;
  pad->function = PMIC_MPP_DIGITAL;
  break;
 case 134:
  pad->input_enabled = 0;
  pad->output_enabled = 1;
  pad->function = PMIC_MPP_DIGITAL;
  break;
 case 136:
  pad->input_enabled = 1;
  pad->output_enabled = 1;
  pad->function = PMIC_MPP_DIGITAL;
  break;
 case 140:
  pad->input_enabled = 1;
  pad->output_enabled = 1;
  pad->function = PMIC_MPP_ANALOG;
  break;
 case 139:
  pad->input_enabled = 1;
  pad->output_enabled = 0;
  pad->function = PMIC_MPP_ANALOG;
  break;
 case 138:
  pad->input_enabled = 0;
  pad->output_enabled = 1;
  pad->function = PMIC_MPP_ANALOG;
  break;
 case 137:
  pad->input_enabled = 0;
  pad->output_enabled = 1;
  pad->function = PMIC_MPP_SINK;
  break;
 default:
  dev_err(state->dev, "unknown MPP direction\n");
  return -ENODEV;
 }

 sel = val >> PMIC_MPP_REG_MODE_FUNCTION_SHIFT;
 sel &= PMIC_MPP_REG_MODE_FUNCTION_MASK;

 if (sel >= PMIC_MPP_SELECTOR_DTEST_FIRST)
  pad->dtest = sel + 1;
 else if (sel == PMIC_MPP_SELECTOR_PAIRED)
  pad->paired = 1;

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_DIG_VIN_CTL);
 if (val < 0)
  return val;

 pad->power_source = val >> PMIC_MPP_REG_VIN_SHIFT;
 pad->power_source &= PMIC_MPP_REG_VIN_MASK;

 if (subtype != 129 &&
     subtype != 128) {
  val = pmic_mpp_read(state, pad, PMIC_MPP_REG_DIG_PULL_CTL);
  if (val < 0)
   return val;

  pad->pullup = val >> PMIC_MPP_REG_PULL_SHIFT;
  pad->pullup &= PMIC_MPP_REG_PULL_MASK;
  pad->has_pullup = 1;
 }

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_AIN_CTL);
 if (val < 0)
  return val;

 pad->amux_input = val >> PMIC_MPP_REG_AIN_ROUTE_SHIFT;
 pad->amux_input &= PMIC_MPP_REG_AIN_ROUTE_MASK;

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_SINK_CTL);
 if (val < 0)
  return val;

 pad->drive_strength = val;

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_AOUT_CTL);
 if (val < 0)
  return val;

 pad->aout_level = val;

 val = pmic_mpp_read(state, pad, PMIC_MPP_REG_EN_CTL);
 if (val < 0)
  return val;

 pad->is_enabled = !!val;

 return 0;
}
