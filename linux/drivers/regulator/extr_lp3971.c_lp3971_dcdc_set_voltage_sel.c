
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct lp3971 {int dummy; } ;


 unsigned int BUCK_TARGET_VOL_MASK ;
 unsigned int BUCK_VOL_CHANGE_FLAG_GO ;
 unsigned int BUCK_VOL_CHANGE_FLAG_MASK ;
 unsigned int BUCK_VOL_CHANGE_SHIFT (int) ;
 int LP3971_BUCK_TARGET_VOL1_REG (int) ;
 int LP3971_BUCK_VOL_CHANGE_REG ;
 int LP3971_DCDC1 ;
 int lp3971_set_bits (struct lp3971*,int ,unsigned int,unsigned int) ;
 struct lp3971* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3971_dcdc_set_voltage_sel(struct regulator_dev *dev,
           unsigned int selector)
{
 struct lp3971 *lp3971 = rdev_get_drvdata(dev);
 int buck = rdev_get_id(dev) - LP3971_DCDC1;
 int ret;

 ret = lp3971_set_bits(lp3971, LP3971_BUCK_TARGET_VOL1_REG(buck),
        BUCK_TARGET_VOL_MASK, selector);
 if (ret)
  return ret;

 ret = lp3971_set_bits(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
        BUCK_VOL_CHANGE_FLAG_MASK << BUCK_VOL_CHANGE_SHIFT(buck),
        BUCK_VOL_CHANGE_FLAG_GO << BUCK_VOL_CHANGE_SHIFT(buck));
 if (ret)
  return ret;

 return lp3971_set_bits(lp3971, LP3971_BUCK_VOL_CHANGE_REG,
        BUCK_VOL_CHANGE_FLAG_MASK << BUCK_VOL_CHANGE_SHIFT(buck),
        0 << BUCK_VOL_CHANGE_SHIFT(buck));
}
