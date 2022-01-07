
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct palmas_pmic {unsigned int* current_reg_mode; } ;


 unsigned int PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK ;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_IDLE ;
 unsigned int REGULATOR_MODE_NORMAL ;



 struct palmas_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static unsigned int palmas_get_mode_smps(struct regulator_dev *dev)
{
 struct palmas_pmic *pmic = rdev_get_drvdata(dev);
 int id = rdev_get_id(dev);
 unsigned int reg;

 reg = pmic->current_reg_mode[id] & PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK;

 switch (reg) {
 case 129:
  return REGULATOR_MODE_NORMAL;
 case 130:
  return REGULATOR_MODE_IDLE;
 case 128:
  return REGULATOR_MODE_FAST;
 }

 return 0;
}
