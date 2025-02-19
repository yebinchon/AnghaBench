
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {TYPE_2__* constraints; TYPE_1__* desc; } ;
struct regulator {struct regulator_dev* rdev; } ;
struct TYPE_4__ {int min_uV; int max_uV; } ;
struct TYPE_3__ {scalar_t__ continuous_voltage_range; } ;


 int REGULATOR_CHANGE_VOLTAGE ;
 int regulator_count_voltages (struct regulator*) ;
 int regulator_get_voltage (struct regulator*) ;
 int regulator_list_voltage (struct regulator*,int) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

int regulator_is_supported_voltage(struct regulator *regulator,
       int min_uV, int max_uV)
{
 struct regulator_dev *rdev = regulator->rdev;
 int i, voltages, ret;


 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_VOLTAGE)) {
  ret = regulator_get_voltage(regulator);
  if (ret >= 0)
   return min_uV <= ret && ret <= max_uV;
  else
   return ret;
 }


 if (rdev->desc->continuous_voltage_range)
  return min_uV >= rdev->constraints->min_uV &&
    max_uV <= rdev->constraints->max_uV;

 ret = regulator_count_voltages(regulator);
 if (ret < 0)
  return 0;
 voltages = ret;

 for (i = 0; i < voltages; i++) {
  ret = regulator_list_voltage(regulator, i);

  if (ret >= min_uV && ret <= max_uV)
   return 1;
 }

 return 0;
}
