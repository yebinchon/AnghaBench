
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct omap_wdt_dev {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_wdt_reload (struct omap_wdt_dev*) ;
 struct omap_wdt_dev* to_omap_wdt_dev (struct watchdog_device*) ;

__attribute__((used)) static int omap_wdt_ping(struct watchdog_device *wdog)
{
 struct omap_wdt_dev *wdev = to_omap_wdt_dev(wdog);

 mutex_lock(&wdev->lock);
 omap_wdt_reload(wdev);
 mutex_unlock(&wdev->lock);

 return 0;
}
