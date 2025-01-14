
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int MAX8997_CHARGER ;
 int MAX8997_CHARGER_TOPOFF ;
 int max8997_set_voltage_ldobuck (struct regulator_dev*,int,int,unsigned int*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8997_set_current_limit(struct regulator_dev *rdev,
         int min_uA, int max_uA)
{
 unsigned dummy;
 int rid = rdev_get_id(rdev);

 if (rid != MAX8997_CHARGER && rid != MAX8997_CHARGER_TOPOFF)
  return -EINVAL;


 return max8997_set_voltage_ldobuck(rdev, min_uA, max_uA, &dummy);
}
