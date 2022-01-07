
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int stop; int timer; scalar_t__ queue; scalar_t__ running; } ;


 scalar_t__ CPU5WDT_INTERVAL ;
 scalar_t__ CPU5WDT_TRIGGER_REG ;
 int complete (int *) ;
 TYPE_1__ cpu5wdt_device ;
 int cpu5wdt_lock ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb (int,scalar_t__) ;
 scalar_t__ port ;
 int pr_debug (char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ ticks ;
 int verbose ;

__attribute__((used)) static void cpu5wdt_trigger(struct timer_list *unused)
{
 if (verbose > 2)
  pr_debug("trigger at %i ticks\n", ticks);

 if (cpu5wdt_device.running)
  ticks--;

 spin_lock(&cpu5wdt_lock);

 outb(1, port + CPU5WDT_TRIGGER_REG);


 if (cpu5wdt_device.queue && ticks)
  mod_timer(&cpu5wdt_device.timer, jiffies + CPU5WDT_INTERVAL);
 else {

  complete(&cpu5wdt_device.stop);
 }
 spin_unlock(&cpu5wdt_lock);

}
