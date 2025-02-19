
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator {int dummy; } ;
struct device {int dummy; } ;
struct dev_pm_opp_supply {unsigned long u_volt; unsigned long u_volt_max; unsigned long u_volt_min; } ;
struct TYPE_2__ {long vdd_absolute_max_voltage_uv; } ;


 int EINVAL ;
 int dev_dbg (struct device*,char*,char*,unsigned long,unsigned long,unsigned long) ;
 int dev_err (struct device*,char*,char*,unsigned long,unsigned long,unsigned long) ;
 int dev_warn (struct device*,char*,unsigned long,unsigned long,unsigned long) ;
 TYPE_1__ opp_data ;
 int regulator_set_voltage_triplet (struct regulator*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int _opp_set_voltage(struct device *dev,
       struct dev_pm_opp_supply *supply,
       int new_target_uv, struct regulator *reg,
       char *reg_name)
{
 int ret;
 unsigned long vdd_uv, uv_max;

 if (new_target_uv)
  vdd_uv = new_target_uv;
 else
  vdd_uv = supply->u_volt;
 if (opp_data.vdd_absolute_max_voltage_uv)
  uv_max = opp_data.vdd_absolute_max_voltage_uv;
 else
  uv_max = supply->u_volt_max;

 if (vdd_uv > uv_max ||
     vdd_uv < supply->u_volt_min ||
     supply->u_volt_min > uv_max) {
  dev_warn(dev,
    "Invalid range voltages [Min:%lu target:%lu Max:%lu]\n",
    supply->u_volt_min, vdd_uv, uv_max);
  return -EINVAL;
 }

 dev_dbg(dev, "%s scaling to %luuV[min %luuV max %luuV]\n", reg_name,
  vdd_uv, supply->u_volt_min,
  uv_max);

 ret = regulator_set_voltage_triplet(reg,
         supply->u_volt_min,
         vdd_uv,
         uv_max);
 if (ret) {
  dev_err(dev, "%s failed for %luuV[min %luuV max %luuV]\n",
   reg_name, vdd_uv, supply->u_volt_min,
   uv_max);
  return ret;
 }

 return 0;
}
