
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65218 {scalar_t__ rev; int* strobes; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int bypass_mask; int bypass_reg; } ;


 int EINVAL ;
 unsigned int TPS65218_DCDC_1 ;
 unsigned int TPS65218_DCDC_3 ;
 unsigned int TPS65218_LDO_1 ;
 int TPS65218_PROTECT_L1 ;
 scalar_t__ TPS65218_REV_2_1 ;
 struct tps65218* rdev_get_drvdata (struct regulator_dev*) ;
 unsigned int rdev_get_id (struct regulator_dev*) ;
 int tps65218_set_bits (struct tps65218*,int ,int ,int,int ) ;

__attribute__((used)) static int tps65218_pmic_set_suspend_disable(struct regulator_dev *dev)
{
 struct tps65218 *tps = rdev_get_drvdata(dev);
 unsigned int rid = rdev_get_id(dev);

 if (rid < TPS65218_DCDC_1 || rid > TPS65218_LDO_1)
  return -EINVAL;






 if (rid == TPS65218_DCDC_3 && tps->rev == TPS65218_REV_2_1)
  return 0;

 if (!tps->strobes[rid]) {
  if (rid == TPS65218_DCDC_3)
   tps->strobes[rid] = 3;
  else
   return -EINVAL;
 }

 return tps65218_set_bits(tps, dev->desc->bypass_reg,
     dev->desc->bypass_mask,
     tps->strobes[rid], TPS65218_PROTECT_L1);
}
