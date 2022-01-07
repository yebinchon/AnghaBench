
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int regmap; } ;


 unsigned int BIT (unsigned int) ;
 int EINVAL ;
 int RK809_ID_SW2 ;
 int RK817_ID_DCDC1 ;
 int RK817_ID_DCDC4 ;
 int RK817_ID_LDO1 ;
 int RK817_ID_LDO8 ;
 int RK817_ID_LDO9 ;
 unsigned int RK817_POWER_SLP_EN_REG (unsigned int) ;
 int rdev_get_id (struct regulator_dev*) ;
 int regmap_update_bits (int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int rk817_set_suspend_enable_ctrl(struct regulator_dev *rdev,
      unsigned int en)
{
 unsigned int reg;
 int id = rdev_get_id(rdev);
 unsigned int id_slp, msk, val;

 if (id >= RK817_ID_DCDC1 && id <= RK817_ID_DCDC4)
  id_slp = id;
 else if (id >= RK817_ID_LDO1 && id <= RK817_ID_LDO8)
  id_slp = 8 + (id - RK817_ID_LDO1);
 else if (id >= RK817_ID_LDO9 && id <= RK809_ID_SW2)
  id_slp = 4 + (id - RK817_ID_LDO9);
 else
  return -EINVAL;

 reg = RK817_POWER_SLP_EN_REG(id_slp / 8);

 msk = BIT(id_slp % 8);
 if (en)
  val = msk;
 else
  val = 0;

 return regmap_update_bits(rdev->regmap, reg, msk, val);
}
