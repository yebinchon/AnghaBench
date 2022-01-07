
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_ticks; scalar_t__ running; } ;


 int EIO ;
 TYPE_1__ cpu5wdt_device ;
 int cpu5wdt_lock ;
 int pr_crit (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ticks ;
 scalar_t__ verbose ;

__attribute__((used)) static int cpu5wdt_stop(void)
{
 unsigned long flags;

 spin_lock_irqsave(&cpu5wdt_lock, flags);
 if (cpu5wdt_device.running)
  cpu5wdt_device.running = 0;
 ticks = cpu5wdt_device.default_ticks;
 spin_unlock_irqrestore(&cpu5wdt_lock, flags);
 if (verbose)
  pr_crit("stop not possible\n");
 return -EIO;
}
