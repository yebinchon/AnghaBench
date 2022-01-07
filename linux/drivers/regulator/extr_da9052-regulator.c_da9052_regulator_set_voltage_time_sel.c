
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9052_regulator_info {unsigned int step_uV; } ;
struct da9052_regulator {struct da9052_regulator_info* info; } ;







 struct da9052_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int da9052_regulator_set_voltage_time_sel(struct regulator_dev *rdev,
       unsigned int old_sel,
       unsigned int new_sel)
{
 struct da9052_regulator *regulator = rdev_get_drvdata(rdev);
 struct da9052_regulator_info *info = regulator->info;
 int id = rdev_get_id(rdev);
 int ret = 0;




 switch (id) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  ret = (new_sel - old_sel) * info->step_uV / 6250;
  break;
 }

 return ret;
}
