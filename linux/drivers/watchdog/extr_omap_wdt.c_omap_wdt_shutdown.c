
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_wdt_dev {int lock; int dev; scalar_t__ omap_wdt_users; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap_wdt_disable (struct omap_wdt_dev*) ;
 struct omap_wdt_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void omap_wdt_shutdown(struct platform_device *pdev)
{
 struct omap_wdt_dev *wdev = platform_get_drvdata(pdev);

 mutex_lock(&wdev->lock);
 if (wdev->omap_wdt_users) {
  omap_wdt_disable(wdev);
  pm_runtime_put_sync(wdev->dev);
 }
 mutex_unlock(&wdev->lock);
}
