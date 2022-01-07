
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65218 {int dummy; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int enable_mask; int enable_reg; } ;


 int EINVAL ;
 int TPS65218_DCDC_1 ;
 int TPS65218_LDO_1 ;
 int TPS65218_PROTECT_L1 ;
 struct tps65218* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps65218_clear_bits (struct tps65218*,int ,int ,int ) ;

__attribute__((used)) static int tps65218_pmic_disable(struct regulator_dev *dev)
{
 struct tps65218 *tps = rdev_get_drvdata(dev);
 int rid = rdev_get_id(dev);

 if (rid < TPS65218_DCDC_1 || rid > TPS65218_LDO_1)
  return -EINVAL;


 return tps65218_clear_bits(tps, dev->desc->enable_reg,
       dev->desc->enable_mask, TPS65218_PROTECT_L1);
}
