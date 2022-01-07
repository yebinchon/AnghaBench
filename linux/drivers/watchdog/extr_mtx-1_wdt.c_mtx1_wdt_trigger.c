
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int gstate; int lock; int stop; int timer; scalar_t__ queue; int gpiod; scalar_t__ running; } ;


 scalar_t__ MTX1_WDT_INTERVAL ;
 int complete (int *) ;
 int gpiod_set_value (int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_1__ mtx1_wdt_device ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ ticks ;

__attribute__((used)) static void mtx1_wdt_trigger(struct timer_list *unused)
{
 spin_lock(&mtx1_wdt_device.lock);
 if (mtx1_wdt_device.running)
  ticks--;


 mtx1_wdt_device.gstate = !mtx1_wdt_device.gstate;
 gpiod_set_value(mtx1_wdt_device.gpiod, mtx1_wdt_device.gstate);

 if (mtx1_wdt_device.queue && ticks)
  mod_timer(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
 else
  complete(&mtx1_wdt_device.stop);
 spin_unlock(&mtx1_wdt_device.lock);
}
