
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {TYPE_1__* gov; } ;
struct TYPE_2__ {int (* pretimeout ) (struct watchdog_device*) ;} ;


 int pretimeout_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct watchdog_device*) ;

void watchdog_notify_pretimeout(struct watchdog_device *wdd)
{
 unsigned long flags;

 spin_lock_irqsave(&pretimeout_lock, flags);
 if (!wdd->gov) {
  spin_unlock_irqrestore(&pretimeout_lock, flags);
  return;
 }

 wdd->gov->pretimeout(wdd);
 spin_unlock_irqrestore(&pretimeout_lock, flags);
}
