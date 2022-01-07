
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct omap_wdt_dev {int omap_wdt_users; int lock; int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_wdt_disable (struct omap_wdt_dev*) ;
 int pm_runtime_put_sync (int ) ;
 struct omap_wdt_dev* to_omap_wdt_dev (struct watchdog_device*) ;

__attribute__((used)) static int omap_wdt_stop(struct watchdog_device *wdog)
{
 struct omap_wdt_dev *wdev = to_omap_wdt_dev(wdog);

 mutex_lock(&wdev->lock);
 omap_wdt_disable(wdev);
 pm_runtime_put_sync(wdev->dev);
 wdev->omap_wdt_users = 0;
 mutex_unlock(&wdev->lock);
 return 0;
}
