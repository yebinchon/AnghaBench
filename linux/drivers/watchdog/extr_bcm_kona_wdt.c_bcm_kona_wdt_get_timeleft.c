
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct bcm_kona_wdt {int lock; } ;


 int SECWDOG_COUNT_MASK ;
 int SECWDOG_COUNT_REG ;
 unsigned int TICKS_TO_SECS (int,struct bcm_kona_wdt*) ;
 int secure_register_read (struct bcm_kona_wdt*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct bcm_kona_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int bcm_kona_wdt_get_timeleft(struct watchdog_device *wdog)
{
 struct bcm_kona_wdt *wdt = watchdog_get_drvdata(wdog);
 int val;
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);
 val = secure_register_read(wdt, SECWDOG_COUNT_REG);
 spin_unlock_irqrestore(&wdt->lock, flags);

 if (val < 0)
  return val;

 return TICKS_TO_SECS(val & SECWDOG_COUNT_MASK, wdt);
}
