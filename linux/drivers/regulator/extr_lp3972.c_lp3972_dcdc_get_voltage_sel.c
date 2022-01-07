
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regulator_dev {int dummy; } ;
struct lp3972 {int dummy; } ;


 int LP3972_BUCK_VOL1_REG (int) ;
 int LP3972_BUCK_VOL_MASK ;
 int LP3972_DCDC1 ;
 int lp3972_reg_read (struct lp3972*,int ) ;
 struct lp3972* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3972_dcdc_get_voltage_sel(struct regulator_dev *dev)
{
 struct lp3972 *lp3972 = rdev_get_drvdata(dev);
 int buck = rdev_get_id(dev) - LP3972_DCDC1;
 u16 reg;

 reg = lp3972_reg_read(lp3972, LP3972_BUCK_VOL1_REG(buck));
 reg &= LP3972_BUCK_VOL_MASK;

 return reg;
}
