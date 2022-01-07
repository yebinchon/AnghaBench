
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct regulator_dev {int dummy; } ;
struct lp3971 {int dummy; } ;


 int LP3971_LDO1 ;
 int LP3971_LDO_ENABLE_REG ;
 int lp3971_set_bits (struct lp3971*,int ,int,int ) ;
 struct lp3971* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int lp3971_ldo_disable(struct regulator_dev *dev)
{
 struct lp3971 *lp3971 = rdev_get_drvdata(dev);
 int ldo = rdev_get_id(dev) - LP3971_LDO1;
 u16 mask = 1 << (1 + ldo);

 return lp3971_set_bits(lp3971, LP3971_LDO_ENABLE_REG, mask, 0);
}
