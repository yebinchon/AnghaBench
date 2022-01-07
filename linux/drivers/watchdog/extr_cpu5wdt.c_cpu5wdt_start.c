
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int running; int timer; } ;


 scalar_t__ CPU5WDT_ENABLE_REG ;
 scalar_t__ CPU5WDT_INTERVAL ;
 scalar_t__ CPU5WDT_MODE_REG ;
 scalar_t__ CPU5WDT_RESET_REG ;
 scalar_t__ CPU5WDT_TIME_A_REG ;
 scalar_t__ CPU5WDT_TIME_B_REG ;
 TYPE_1__ cpu5wdt_device ;
 int cpu5wdt_lock ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int,scalar_t__) ;
 scalar_t__ port ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cpu5wdt_start(void)
{
 unsigned long flags;

 spin_lock_irqsave(&cpu5wdt_lock, flags);
 if (!cpu5wdt_device.queue) {
  cpu5wdt_device.queue = 1;
  outb(0, port + CPU5WDT_TIME_A_REG);
  outb(0, port + CPU5WDT_TIME_B_REG);
  outb(1, port + CPU5WDT_MODE_REG);
  outb(0, port + CPU5WDT_RESET_REG);
  outb(0, port + CPU5WDT_ENABLE_REG);
  mod_timer(&cpu5wdt_device.timer, jiffies + CPU5WDT_INTERVAL);
 }

 cpu5wdt_device.running++;
 spin_unlock_irqrestore(&cpu5wdt_lock, flags);
}
