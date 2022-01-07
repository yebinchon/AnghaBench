
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9055_regulator {int rdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int REGULATOR_EVENT_OVER_CURRENT ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,int ,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t da9055_ldo5_6_oc_irq(int irq, void *data)
{
 struct da9055_regulator *regulator = data;

 regulator_lock(regulator->rdev);
 regulator_notifier_call_chain(regulator->rdev,
          REGULATOR_EVENT_OVER_CURRENT, ((void*)0));
 regulator_unlock(regulator->rdev);

 return IRQ_HANDLED;
}
