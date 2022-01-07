
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int gstate; int lock; int running; int timer; int gpiod; } ;


 scalar_t__ MTX1_WDT_INTERVAL ;
 int gpiod_set_value (int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_1__ mtx1_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mtx1_wdt_start(void)
{
 unsigned long flags;

 spin_lock_irqsave(&mtx1_wdt_device.lock, flags);
 if (!mtx1_wdt_device.queue) {
  mtx1_wdt_device.queue = 1;
  mtx1_wdt_device.gstate = 1;
  gpiod_set_value(mtx1_wdt_device.gpiod, 1);
  mod_timer(&mtx1_wdt_device.timer, jiffies + MTX1_WDT_INTERVAL);
 }
 mtx1_wdt_device.running++;
 spin_unlock_irqrestore(&mtx1_wdt_device.lock, flags);
}
