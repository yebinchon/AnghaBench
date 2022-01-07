
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct sh_wdt {int lock; } ;


 int EINVAL ;
 unsigned int heartbeat ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 struct sh_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int sh_wdt_set_heartbeat(struct watchdog_device *wdt_dev, unsigned t)
{
 struct sh_wdt *wdt = watchdog_get_drvdata(wdt_dev);
 unsigned long flags;

 if (unlikely(t < 1 || t > 3600))
  return -EINVAL;

 spin_lock_irqsave(&wdt->lock, flags);
 heartbeat = t;
 wdt_dev->timeout = t;
 spin_unlock_irqrestore(&wdt->lock, flags);

 return 0;
}
