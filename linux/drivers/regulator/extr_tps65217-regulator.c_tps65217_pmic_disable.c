
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65217 {int dummy; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int enable_mask; } ;


 int EINVAL ;
 int TPS65217_DCDC_1 ;
 int TPS65217_LDO_4 ;
 int TPS65217_PROTECT_L1 ;
 int TPS65217_REG_ENABLE ;
 struct tps65217* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;
 int tps65217_clear_bits (struct tps65217*,int ,int ,int ) ;

__attribute__((used)) static int tps65217_pmic_disable(struct regulator_dev *dev)
{
 struct tps65217 *tps = rdev_get_drvdata(dev);
 int rid = rdev_get_id(dev);

 if (rid < TPS65217_DCDC_1 || rid > TPS65217_LDO_4)
  return -EINVAL;


 return tps65217_clear_bits(tps, TPS65217_REG_ENABLE,
       dev->desc->enable_mask, TPS65217_PROTECT_L1);
}
