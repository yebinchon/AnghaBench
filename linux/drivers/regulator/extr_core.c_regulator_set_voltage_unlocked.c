
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t suspend_state_t ;
struct regulator_voltage {int min_uV; int max_uV; } ;
struct regulator_dev {TYPE_2__* desc; } ;
struct regulator {struct regulator_voltage* voltage; struct regulator_dev* rdev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int set_voltage_sel; int set_voltage; } ;


 int EINVAL ;
 int REGULATOR_CHANGE_VOLTAGE ;
 int regulator_balance_voltage (struct regulator_dev*,size_t) ;
 int regulator_check_voltage (struct regulator_dev*,int*,int*) ;
 int regulator_get_voltage_rdev (struct regulator_dev*) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;

__attribute__((used)) static int regulator_set_voltage_unlocked(struct regulator *regulator,
       int min_uV, int max_uV,
       suspend_state_t state)
{
 struct regulator_dev *rdev = regulator->rdev;
 struct regulator_voltage *voltage = &regulator->voltage[state];
 int ret = 0;
 int old_min_uV, old_max_uV;
 int current_uV;





 if (voltage->min_uV == min_uV && voltage->max_uV == max_uV)
  goto out;





 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_VOLTAGE)) {
  current_uV = regulator_get_voltage_rdev(rdev);
  if (min_uV <= current_uV && current_uV <= max_uV) {
   voltage->min_uV = min_uV;
   voltage->max_uV = max_uV;
   goto out;
  }
 }


 if (!rdev->desc->ops->set_voltage &&
     !rdev->desc->ops->set_voltage_sel) {
  ret = -EINVAL;
  goto out;
 }


 ret = regulator_check_voltage(rdev, &min_uV, &max_uV);
 if (ret < 0)
  goto out;


 old_min_uV = voltage->min_uV;
 old_max_uV = voltage->max_uV;
 voltage->min_uV = min_uV;
 voltage->max_uV = max_uV;


 ret = regulator_balance_voltage(rdev, state);
 if (ret < 0) {
  voltage->min_uV = old_min_uV;
  voltage->max_uV = old_max_uV;
 }

out:
 return ret;
}
