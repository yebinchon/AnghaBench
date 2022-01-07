
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc3589 {int regmap; int * regulators; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LTC3589_CLIRQ ;
 int LTC3589_IRQSTAT ;
 unsigned int LTC3589_IRQSTAT_THERMAL_WARN ;
 unsigned int LTC3589_IRQSTAT_UNDERVOLT_WARN ;
 unsigned int LTC3589_NUM_REGULATORS ;
 unsigned int REGULATOR_EVENT_OVER_TEMP ;
 unsigned int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,unsigned int,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t ltc3589_isr(int irq, void *dev_id)
{
 struct ltc3589 *ltc3589 = dev_id;
 unsigned int i, irqstat, event;

 regmap_read(ltc3589->regmap, LTC3589_IRQSTAT, &irqstat);

 if (irqstat & LTC3589_IRQSTAT_THERMAL_WARN) {
  event = REGULATOR_EVENT_OVER_TEMP;
  for (i = 0; i < LTC3589_NUM_REGULATORS; i++) {
          regulator_lock(ltc3589->regulators[i]);
   regulator_notifier_call_chain(ltc3589->regulators[i],
            event, ((void*)0));
          regulator_unlock(ltc3589->regulators[i]);
  }
 }

 if (irqstat & LTC3589_IRQSTAT_UNDERVOLT_WARN) {
  event = REGULATOR_EVENT_UNDER_VOLTAGE;
  for (i = 0; i < LTC3589_NUM_REGULATORS; i++) {
          regulator_lock(ltc3589->regulators[i]);
   regulator_notifier_call_chain(ltc3589->regulators[i],
            event, ((void*)0));
          regulator_unlock(ltc3589->regulators[i]);
  }
 }


 regmap_write(ltc3589->regmap, LTC3589_CLIRQ, 0);

 return IRQ_HANDLED;
}
