
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max77620_regulator {scalar_t__* active_fps_src; } ;


 scalar_t__ MAX77620_FPS_SRC_NONE ;
 int MAX77620_POWER_MODE_DISABLE ;
 int max77620_regulator_set_power_mode (struct max77620_regulator*,int ,int) ;
 struct max77620_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max77620_regulator_disable(struct regulator_dev *rdev)
{
 struct max77620_regulator *pmic = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);

 if (pmic->active_fps_src[id] != MAX77620_FPS_SRC_NONE)
  return 0;

 return max77620_regulator_set_power_mode(pmic,
   MAX77620_POWER_MODE_DISABLE, id);
}
