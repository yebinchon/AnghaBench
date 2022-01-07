
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2952_poweroff {int timer_trigger; int trigger_delay; int gpio_trigger; int timer_wde; scalar_t__ kernel_panic; } ;
typedef int irqreturn_t ;


 int HRTIMER_MODE_REL ;
 int IRQ_HANDLED ;
 scalar_t__ gpiod_get_value (int ) ;
 scalar_t__ hrtimer_active (int *) ;
 int hrtimer_cancel (int *) ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static irqreturn_t ltc2952_poweroff_handler(int irq, void *dev_id)
{
 struct ltc2952_poweroff *data = dev_id;

 if (data->kernel_panic || hrtimer_active(&data->timer_wde)) {

  return IRQ_HANDLED;
 }

 if (gpiod_get_value(data->gpio_trigger)) {
  hrtimer_start(&data->timer_trigger, data->trigger_delay,
         HRTIMER_MODE_REL);
 } else {
  hrtimer_cancel(&data->timer_trigger);
 }
 return IRQ_HANDLED;
}
