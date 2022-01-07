
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct lp3972 {int dummy; } ;




 int LP3972_LDO_VOL_CHANGE_SHIFT (int) ;
 int LP3972_LDO_VOL_CONTR_REG (int) ;
 int LP3972_LDO_VOL_CONTR_SHIFT (int) ;
 int LP3972_LDO_VOL_MASK (int) ;
 int LP3972_VOL_CHANGE_FLAG_GO ;
 int LP3972_VOL_CHANGE_FLAG_MASK ;
 int LP3972_VOL_CHANGE_REG ;
 int lp3972_set_bits (struct lp3972*,int ,int,int) ;
 struct lp3972* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3972_ldo_set_voltage_sel(struct regulator_dev *dev,
          unsigned int selector)
{
 struct lp3972 *lp3972 = rdev_get_drvdata(dev);
 int ldo = rdev_get_id(dev) - 129;
 int shift, ret;

 shift = LP3972_LDO_VOL_CONTR_SHIFT(ldo);
 ret = lp3972_set_bits(lp3972, LP3972_LDO_VOL_CONTR_REG(ldo),
  LP3972_LDO_VOL_MASK(ldo) << shift, selector << shift);

 if (ret)
  return ret;
 switch (ldo) {
 case 129:
 case 128:
  shift = LP3972_LDO_VOL_CHANGE_SHIFT(ldo);
  ret = lp3972_set_bits(lp3972, LP3972_VOL_CHANGE_REG,
   LP3972_VOL_CHANGE_FLAG_MASK << shift,
   LP3972_VOL_CHANGE_FLAG_GO << shift);
  if (ret)
   return ret;

  ret = lp3972_set_bits(lp3972, LP3972_VOL_CHANGE_REG,
   LP3972_VOL_CHANGE_FLAG_MASK << shift, 0);
  break;
 }

 return ret;
}
