
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct lp3972 {int dummy; } ;


 int LP3972_BUCK_VOL1_REG (int) ;
 int LP3972_BUCK_VOL_MASK ;
 int LP3972_DCDC1 ;
 unsigned int LP3972_VOL_CHANGE_FLAG_GO ;
 int LP3972_VOL_CHANGE_FLAG_MASK ;
 int LP3972_VOL_CHANGE_REG ;
 int lp3972_set_bits (struct lp3972*,int ,int ,unsigned int) ;
 struct lp3972* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3972_dcdc_set_voltage_sel(struct regulator_dev *dev,
           unsigned int selector)
{
 struct lp3972 *lp3972 = rdev_get_drvdata(dev);
 int buck = rdev_get_id(dev) - LP3972_DCDC1;
 int ret;

 ret = lp3972_set_bits(lp3972, LP3972_BUCK_VOL1_REG(buck),
    LP3972_BUCK_VOL_MASK, selector);
 if (ret)
  return ret;

 if (buck != 0)
  return ret;

 ret = lp3972_set_bits(lp3972, LP3972_VOL_CHANGE_REG,
  LP3972_VOL_CHANGE_FLAG_MASK, LP3972_VOL_CHANGE_FLAG_GO);
 if (ret)
  return ret;

 return lp3972_set_bits(lp3972, LP3972_VOL_CHANGE_REG,
    LP3972_VOL_CHANGE_FLAG_MASK, 0);
}
