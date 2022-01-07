
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc3676 {int regmap; int * regulators; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int LTC3676_CLIRQ ;
 int LTC3676_IRQSTAT ;
 unsigned int LTC3676_IRQSTAT_THERMAL_WARN ;
 unsigned int LTC3676_IRQSTAT_UNDERVOLT_WARN ;
 unsigned int LTC3676_NUM_REGULATORS ;
 unsigned int REGULATOR_EVENT_OVER_TEMP ;
 unsigned int REGULATOR_EVENT_UNDER_VOLTAGE ;
 int dev_dbg (struct device*,char*,int,unsigned int) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int regulator_lock (int ) ;
 int regulator_notifier_call_chain (int ,unsigned int,int *) ;
 int regulator_unlock (int ) ;

__attribute__((used)) static irqreturn_t ltc3676_isr(int irq, void *dev_id)
{
 struct ltc3676 *ltc3676 = dev_id;
 struct device *dev = ltc3676->dev;
 unsigned int i, irqstat, event;

 regmap_read(ltc3676->regmap, LTC3676_IRQSTAT, &irqstat);

 dev_dbg(dev, "irq%d irqstat=0x%02x\n", irq, irqstat);
 if (irqstat & LTC3676_IRQSTAT_THERMAL_WARN) {
  dev_warn(dev, "Over-temperature Warning\n");
  event = REGULATOR_EVENT_OVER_TEMP;
  for (i = 0; i < LTC3676_NUM_REGULATORS; i++) {
   regulator_lock(ltc3676->regulators[i]);
   regulator_notifier_call_chain(ltc3676->regulators[i],
            event, ((void*)0));
   regulator_unlock(ltc3676->regulators[i]);
  }
 }

 if (irqstat & LTC3676_IRQSTAT_UNDERVOLT_WARN) {
  dev_info(dev, "Undervoltage Warning\n");
  event = REGULATOR_EVENT_UNDER_VOLTAGE;
  for (i = 0; i < LTC3676_NUM_REGULATORS; i++) {
   regulator_lock(ltc3676->regulators[i]);
   regulator_notifier_call_chain(ltc3676->regulators[i],
            event, ((void*)0));
   regulator_unlock(ltc3676->regulators[i]);
  }
 }


 regmap_write(ltc3676->regmap, LTC3676_CLIRQ, 0);

 return IRQ_HANDLED;
}
