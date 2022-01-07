
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int default_ticks; int gpiod; scalar_t__ gstate; scalar_t__ queue; } ;


 int gpiod_set_value (int ,int ) ;
 TYPE_1__ mtx1_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ticks ;

__attribute__((used)) static int mtx1_wdt_stop(void)
{
 unsigned long flags;

 spin_lock_irqsave(&mtx1_wdt_device.lock, flags);
 if (mtx1_wdt_device.queue) {
  mtx1_wdt_device.queue = 0;
  mtx1_wdt_device.gstate = 0;
  gpiod_set_value(mtx1_wdt_device.gpiod, 0);
 }
 ticks = mtx1_wdt_device.default_ticks;
 spin_unlock_irqrestore(&mtx1_wdt_device.lock, flags);
 return 0;
}
