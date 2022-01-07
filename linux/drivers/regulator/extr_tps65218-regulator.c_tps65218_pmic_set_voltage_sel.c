
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65218 {int dummy; } ;
struct regulator_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {unsigned int vsel_mask; int vsel_reg; } ;




 int TPS65218_PROTECT_L1 ;
 int TPS65218_REG_CONTRL_SLEW_RATE ;
 unsigned int TPS65218_SLEW_RATE_GO ;
 struct tps65218* rdev_get_drvdata (struct regulator_dev*) ;
 unsigned int rdev_get_id (struct regulator_dev*) ;
 int tps65218_set_bits (struct tps65218*,int ,unsigned int,unsigned int,int ) ;

__attribute__((used)) static int tps65218_pmic_set_voltage_sel(struct regulator_dev *dev,
      unsigned selector)
{
 int ret;
 struct tps65218 *tps = rdev_get_drvdata(dev);
 unsigned int rid = rdev_get_id(dev);


 ret = tps65218_set_bits(tps, dev->desc->vsel_reg, dev->desc->vsel_mask,
    selector, TPS65218_PROTECT_L1);


 switch (rid) {
 case 129:
 case 128:
  ret = tps65218_set_bits(tps, TPS65218_REG_CONTRL_SLEW_RATE,
     TPS65218_SLEW_RATE_GO,
     TPS65218_SLEW_RATE_GO,
     TPS65218_PROTECT_L1);
  break;
 }

 return ret;
}
