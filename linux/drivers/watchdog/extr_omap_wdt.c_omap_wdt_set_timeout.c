
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct omap_wdt_dev {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_wdt_disable (struct omap_wdt_dev*) ;
 int omap_wdt_enable (struct omap_wdt_dev*) ;
 int omap_wdt_reload (struct omap_wdt_dev*) ;
 int omap_wdt_set_timer (struct omap_wdt_dev*,unsigned int) ;
 struct omap_wdt_dev* to_omap_wdt_dev (struct watchdog_device*) ;

__attribute__((used)) static int omap_wdt_set_timeout(struct watchdog_device *wdog,
    unsigned int timeout)
{
 struct omap_wdt_dev *wdev = to_omap_wdt_dev(wdog);

 mutex_lock(&wdev->lock);
 omap_wdt_disable(wdev);
 omap_wdt_set_timer(wdev, timeout);
 omap_wdt_enable(wdev);
 omap_wdt_reload(wdev);
 wdog->timeout = timeout;
 mutex_unlock(&wdev->lock);

 return 0;
}
