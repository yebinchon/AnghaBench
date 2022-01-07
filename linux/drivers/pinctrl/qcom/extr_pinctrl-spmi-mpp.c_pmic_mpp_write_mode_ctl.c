
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmic_mpp_state {int dummy; } ;
struct pmic_mpp_pad {int function; int dtest; int out_value; scalar_t__ paired; int input_enabled; int output_enabled; } ;




 unsigned int PMIC_MPP_MODE_ANALOG_BIDIR ;
 unsigned int PMIC_MPP_MODE_ANALOG_INPUT ;
 unsigned int PMIC_MPP_MODE_ANALOG_OUTPUT ;
 unsigned int PMIC_MPP_MODE_CURRENT_SINK ;
 unsigned int PMIC_MPP_MODE_DIGITAL_BIDIR ;
 unsigned int PMIC_MPP_MODE_DIGITAL_INPUT ;
 unsigned int PMIC_MPP_MODE_DIGITAL_OUTPUT ;
 int PMIC_MPP_REG_MODE_CTL ;
 unsigned int PMIC_MPP_REG_MODE_DIR_SHIFT ;
 unsigned int PMIC_MPP_REG_MODE_FUNCTION_SHIFT ;
 int PMIC_MPP_SELECTOR_DTEST_FIRST ;
 unsigned int PMIC_MPP_SELECTOR_NORMAL ;
 unsigned int PMIC_MPP_SELECTOR_PAIRED ;

 int pmic_mpp_write (struct pmic_mpp_state*,struct pmic_mpp_pad*,int ,unsigned int) ;

__attribute__((used)) static int pmic_mpp_write_mode_ctl(struct pmic_mpp_state *state,
       struct pmic_mpp_pad *pad)
{
 unsigned int mode;
 unsigned int sel;
 unsigned int val;
 unsigned int en;

 switch (pad->function) {
 case 130:
  if (pad->input_enabled && pad->output_enabled)
   mode = PMIC_MPP_MODE_ANALOG_BIDIR;
  else if (pad->input_enabled)
   mode = PMIC_MPP_MODE_ANALOG_INPUT;
  else
   mode = PMIC_MPP_MODE_ANALOG_OUTPUT;
  break;
 case 129:
  if (pad->input_enabled && pad->output_enabled)
   mode = PMIC_MPP_MODE_DIGITAL_BIDIR;
  else if (pad->input_enabled)
   mode = PMIC_MPP_MODE_DIGITAL_INPUT;
  else
   mode = PMIC_MPP_MODE_DIGITAL_OUTPUT;
  break;
 case 128:
 default:
  mode = PMIC_MPP_MODE_CURRENT_SINK;
  break;
 }

 if (pad->dtest)
  sel = PMIC_MPP_SELECTOR_DTEST_FIRST + pad->dtest - 1;
 else if (pad->paired)
  sel = PMIC_MPP_SELECTOR_PAIRED;
 else
  sel = PMIC_MPP_SELECTOR_NORMAL;

 en = !!pad->out_value;

 val = mode << PMIC_MPP_REG_MODE_DIR_SHIFT |
       sel << PMIC_MPP_REG_MODE_FUNCTION_SHIFT |
       en;

 return pmic_mpp_write(state, pad, PMIC_MPP_REG_MODE_CTL, val);
}
