
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct goldfish_battery_data {int lock; int ac; int battery; } ;
typedef int irqreturn_t ;


 int AC_STATUS_CHANGED ;
 int BATTERY_INT_MASK ;
 int BATTERY_INT_STATUS ;
 int BATTERY_STATUS_CHANGED ;
 int GOLDFISH_BATTERY_READ (struct goldfish_battery_data*,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int power_supply_changed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t goldfish_battery_interrupt(int irq, void *dev_id)
{
 unsigned long irq_flags;
 struct goldfish_battery_data *data = dev_id;
 uint32_t status;

 spin_lock_irqsave(&data->lock, irq_flags);


 status = GOLDFISH_BATTERY_READ(data, BATTERY_INT_STATUS);
 status &= BATTERY_INT_MASK;

 if (status & BATTERY_STATUS_CHANGED)
  power_supply_changed(data->battery);
 if (status & AC_STATUS_CHANGED)
  power_supply_changed(data->ac);

 spin_unlock_irqrestore(&data->lock, irq_flags);
 return status ? IRQ_HANDLED : IRQ_NONE;
}
