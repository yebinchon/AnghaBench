
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ramp_delay; } ;
struct max77620_regulator_info {int type; TYPE_1__ desc; int cfg_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; } ;



 unsigned int MAX77620_SD_SR_SHIFT ;
 int dev_err (int ,char*,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77620_read_slew_rate(struct max77620_regulator *pmic, int id)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int rval;
 int slew_rate;
 int ret;

 ret = regmap_read(pmic->rmap, rinfo->cfg_addr, &rval);
 if (ret < 0) {
  dev_err(pmic->dev, "Register 0x%02x read failed: %d\n",
   rinfo->cfg_addr, ret);
  return ret;
 }

 switch (rinfo->type) {
 case 128:
  slew_rate = (rval >> MAX77620_SD_SR_SHIFT) & 0x3;
  switch (slew_rate) {
  case 0:
   slew_rate = 13750;
   break;
  case 1:
   slew_rate = 27500;
   break;
  case 2:
   slew_rate = 55000;
   break;
  case 3:
   slew_rate = 100000;
   break;
  }
  rinfo->desc.ramp_delay = slew_rate;
  break;
 default:
  slew_rate = rval & 0x1;
  switch (slew_rate) {
  case 0:
   slew_rate = 100000;
   break;
  case 1:
   slew_rate = 5000;
   break;
  }
  rinfo->desc.ramp_delay = slew_rate;
  break;
 }

 return 0;
}
