
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct act8945a_pmic {unsigned int* op_mode; } ;


 int ACT8945A_ID_DCDC1 ;
 int ACT8945A_ID_MAX ;
 unsigned int EINVAL ;
 struct act8945a_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static unsigned int act8945a_get_mode(struct regulator_dev *rdev)
{
 struct act8945a_pmic *act8945a = rdev_get_drvdata(rdev);
 int id = rdev_get_id(rdev);

 if (id < ACT8945A_ID_DCDC1 || id >= ACT8945A_ID_MAX)
  return -EINVAL;

 return act8945a->op_mode[id];
}
