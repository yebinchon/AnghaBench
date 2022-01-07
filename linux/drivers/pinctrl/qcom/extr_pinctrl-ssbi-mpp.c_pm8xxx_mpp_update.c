
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct pm8xxx_pin_data {int mode; unsigned int dtest; int pullup; unsigned int output_value; unsigned int power_source; unsigned int aout_level; unsigned int amux; int drive_strength; int reg; int paired; int output; int input; int high_z; } ;
struct pm8xxx_mpp {int dev; int regmap; } ;


 unsigned int BIT (int) ;
 int EINVAL ;

 unsigned int PM8XXX_MPP_BI_PULLUP_10KOHM ;
 unsigned int PM8XXX_MPP_BI_PULLUP_1KOHM ;
 unsigned int PM8XXX_MPP_BI_PULLUP_30KOHM ;
 unsigned int PM8XXX_MPP_BI_PULLUP_OPEN ;

 unsigned int PM8XXX_MPP_DIN_TO_INT ;

 unsigned int PM8XXX_MPP_TYPE_A_INPUT ;
 unsigned int PM8XXX_MPP_TYPE_A_OUTPUT ;
 unsigned int PM8XXX_MPP_TYPE_DTEST_OUTPUT ;
 unsigned int PM8XXX_MPP_TYPE_DTEST_SINK ;
 unsigned int PM8XXX_MPP_TYPE_D_BI_DIR ;
 unsigned int PM8XXX_MPP_TYPE_D_INPUT ;
 unsigned int PM8XXX_MPP_TYPE_D_OUTPUT ;
 unsigned int PM8XXX_MPP_TYPE_SINK ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pm8xxx_mpp_update(struct pm8xxx_mpp *pctrl,
        struct pm8xxx_pin_data *pin)
{
 unsigned level;
 unsigned ctrl;
 unsigned type;
 int ret;
 u8 val;

 switch (pin->mode) {
 case 129:
  if (pin->dtest) {
   type = PM8XXX_MPP_TYPE_DTEST_OUTPUT;
   ctrl = pin->dtest - 1;
  } else if (pin->input && pin->output) {
   type = PM8XXX_MPP_TYPE_D_BI_DIR;
   if (pin->high_z)
    ctrl = PM8XXX_MPP_BI_PULLUP_OPEN;
   else if (pin->pullup == 600)
    ctrl = PM8XXX_MPP_BI_PULLUP_1KOHM;
   else if (pin->pullup == 10000)
    ctrl = PM8XXX_MPP_BI_PULLUP_10KOHM;
   else
    ctrl = PM8XXX_MPP_BI_PULLUP_30KOHM;
  } else if (pin->input) {
   type = PM8XXX_MPP_TYPE_D_INPUT;
   if (pin->dtest)
    ctrl = pin->dtest;
   else
    ctrl = PM8XXX_MPP_DIN_TO_INT;
  } else {
   type = PM8XXX_MPP_TYPE_D_OUTPUT;
   ctrl = !!pin->output_value;
   if (pin->paired)
    ctrl |= BIT(1);
  }

  level = pin->power_source;
  break;
 case 130:
  if (pin->output) {
   type = PM8XXX_MPP_TYPE_A_OUTPUT;
   level = pin->aout_level;
   ctrl = pin->output_value;
   if (pin->paired)
    ctrl |= BIT(1);
  } else {
   type = PM8XXX_MPP_TYPE_A_INPUT;
   level = pin->amux;
   ctrl = 0;
  }
  break;
 case 128:
  level = (pin->drive_strength / 5) - 1;
  if (pin->dtest) {
   type = PM8XXX_MPP_TYPE_DTEST_SINK;
   ctrl = pin->dtest - 1;
  } else {
   type = PM8XXX_MPP_TYPE_SINK;
   ctrl = pin->output_value;
   if (pin->paired)
    ctrl |= BIT(1);
  }
  break;
 default:
  return -EINVAL;
 }

 val = type << 5 | level << 2 | ctrl;
 ret = regmap_write(pctrl->regmap, pin->reg, val);
 if (ret)
  dev_err(pctrl->dev, "failed to write register\n");

 return ret;
}
