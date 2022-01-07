
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regulator_dev {int dummy; } ;
struct lp3972 {int dummy; } ;


 int LP3972_BUCK_VOL_ENABLE_REG (int) ;
 int LP3972_DCDC1 ;
 int lp3972_set_bits (struct lp3972*,int ,int,int) ;
 struct lp3972* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3972_dcdc_enable(struct regulator_dev *dev)
{
 struct lp3972 *lp3972 = rdev_get_drvdata(dev);
 int buck = rdev_get_id(dev) - LP3972_DCDC1;
 u16 mask = 1 << (buck * 2);
 u16 val;

 val = lp3972_set_bits(lp3972, LP3972_BUCK_VOL_ENABLE_REG(buck),
    mask, mask);
 return val;
}
