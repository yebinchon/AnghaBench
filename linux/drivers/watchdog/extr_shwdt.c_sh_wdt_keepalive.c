
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct sh_wdt {int lock; } ;


 int HZ ;
 int heartbeat ;
 scalar_t__ jiffies ;
 scalar_t__ next_heartbeat ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sh_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int sh_wdt_keepalive(struct watchdog_device *wdt_dev)
{
 struct sh_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);
 next_heartbeat = jiffies + (heartbeat * HZ);
 spin_unlock_irqrestore(&wdt->lock, flags);

 return 0;
}
