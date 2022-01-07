
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int EINVAL ;
 int MAX8997_CHARGER ;
 int MAX8997_CHARGER_TOPOFF ;
 int max8997_get_voltage_sel (struct regulator_dev*) ;
 int max8997_list_voltage (struct regulator_dev*,int) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8997_get_current_limit(struct regulator_dev *rdev)
{
 int sel, rid = rdev_get_id(rdev);

 if (rid != MAX8997_CHARGER && rid != MAX8997_CHARGER_TOPOFF)
  return -EINVAL;

 sel = max8997_get_voltage_sel(rdev);
 if (sel < 0)
  return sel;


 return max8997_list_voltage(rdev, sel);
}
