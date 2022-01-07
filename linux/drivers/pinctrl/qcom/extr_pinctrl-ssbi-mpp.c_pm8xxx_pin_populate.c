
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int val ;
struct pm8xxx_pin_data {int input; unsigned int power_source; unsigned int dtest; int output; int output_value; int paired; int pullup; int high_z; unsigned int amux; unsigned int aout_level; int drive_strength; void* mode; int reg; } ;
struct pm8xxx_mpp {int dev; int regmap; } ;


 unsigned int BIT (int) ;
 void* PM8XXX_MPP_ANALOG ;




 void* PM8XXX_MPP_DIGITAL ;
 void* PM8XXX_MPP_SINK ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pm8xxx_pin_populate(struct pm8xxx_mpp *pctrl,
          struct pm8xxx_pin_data *pin)
{
 unsigned int val;
 unsigned level;
 unsigned ctrl;
 unsigned type;
 int ret;

 ret = regmap_read(pctrl->regmap, pin->reg, &val);
 if (ret) {
  dev_err(pctrl->dev, "failed to read register\n");
  return ret;
 }

 type = (val >> 5) & 7;
 level = (val >> 2) & 7;
 ctrl = (val) & 3;

 switch (type) {
 case 130:
  pin->mode = PM8XXX_MPP_DIGITAL;
  pin->input = 1;
  pin->power_source = level;
  pin->dtest = ctrl;
  break;
 case 129:
  pin->mode = PM8XXX_MPP_DIGITAL;
  pin->output = 1;
  pin->power_source = level;
  pin->output_value = !!(ctrl & BIT(0));
  pin->paired = !!(ctrl & BIT(1));
  break;
 case 131:
  pin->mode = PM8XXX_MPP_DIGITAL;
  pin->input = 1;
  pin->output = 1;
  pin->power_source = level;
  switch (ctrl) {
  case 138:
   pin->pullup = 600;
   break;
  case 136:
   pin->high_z = 1;
   break;
  case 139:
   pin->pullup = 10000;
   break;
  case 137:
   pin->pullup = 30000;
   break;
  }
  break;
 case 135:
  pin->mode = PM8XXX_MPP_ANALOG;
  pin->input = 1;
  pin->amux = level;
  break;
 case 134:
  pin->mode = PM8XXX_MPP_ANALOG;
  pin->output = 1;
  pin->aout_level = level;
  pin->output_value = !!(ctrl & BIT(0));
  pin->paired = !!(ctrl & BIT(1));
  break;
 case 128:
  pin->mode = PM8XXX_MPP_SINK;
  pin->drive_strength = 5 * (level + 1);
  pin->output_value = !!(ctrl & BIT(0));
  pin->paired = !!(ctrl & BIT(1));
  break;
 case 132:
  pin->mode = PM8XXX_MPP_SINK;
  pin->dtest = ctrl + 1;
  pin->drive_strength = 5 * (level + 1);
  break;
 case 133:
  pin->mode = PM8XXX_MPP_DIGITAL;
  pin->power_source = level;
  if (ctrl >= 1)
   pin->dtest = ctrl;
  break;
 }

 return 0;
}
