
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regulator_dev {int dummy; } ;
struct lp3972 {int dummy; } ;


 int LP3972_LDO1 ;
 int LP3972_LDO_OUTPUT_ENABLE_MASK (int) ;
 int LP3972_LDO_OUTPUT_ENABLE_REG (int) ;
 int lp3972_set_bits (struct lp3972*,int ,int ,int ) ;
 struct lp3972* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3972_ldo_enable(struct regulator_dev *dev)
{
 struct lp3972 *lp3972 = rdev_get_drvdata(dev);
 int ldo = rdev_get_id(dev) - LP3972_LDO1;
 u16 mask = LP3972_LDO_OUTPUT_ENABLE_MASK(ldo);

 return lp3972_set_bits(lp3972, LP3972_LDO_OUTPUT_ENABLE_REG(ldo),
    mask, mask);
}
