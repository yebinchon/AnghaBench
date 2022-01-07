
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct da9063_regulators {int n_regulators; struct da9063_regulator* regulator; } ;
struct da9063_regulator {int rdev; TYPE_2__* info; struct da9063* hw; } ;
struct da9063 {int regmap; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ reg; int lsb; } ;
struct TYPE_4__ {TYPE_1__ oc_event; } ;


 int BIT (int ) ;
 scalar_t__ DA9063_REG_STATUS_D ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int REGULATOR_EVENT_OVER_CURRENT ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t da9063_ldo_lim_event(int irq, void *data)
{
 struct da9063_regulators *regulators = data;
 struct da9063 *hw = regulators->regulator[0].hw;
 struct da9063_regulator *regl;
 int bits, i , ret;

 ret = regmap_read(hw->regmap, DA9063_REG_STATUS_D, &bits);
 if (ret < 0)
  return IRQ_NONE;

 for (i = regulators->n_regulators - 1; i >= 0; i--) {
  regl = &regulators->regulator[i];
  if (regl->info->oc_event.reg != DA9063_REG_STATUS_D)
   continue;

  if (BIT(regl->info->oc_event.lsb) & bits) {
          regulator_lock(regl->rdev);
   regulator_notifier_call_chain(regl->rdev,
     REGULATOR_EVENT_OVER_CURRENT, ((void*)0));
          regulator_unlock(regl->rdev);
  }
 }

 return IRQ_HANDLED;
}
