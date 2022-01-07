
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wlcore_platdev_data {TYPE_2__* family; } ;
struct wl1271 {int irq; TYPE_3__* dev; scalar_t__ irq_wake_enabled; int wakeirq; int initialized; int nvs_loading_complete; } ;
struct platform_device {int dev; } ;
struct TYPE_12__ {TYPE_1__* driver; } ;
struct TYPE_11__ {scalar_t__ nvs_name; } ;
struct TYPE_10__ {int * pm; } ;


 int ENODEV ;
 struct wlcore_platdev_data* dev_get_platdata (int *) ;
 int dev_pm_clear_wake_irq (TYPE_3__*) ;
 int dev_warn (TYPE_3__*,char*,int) ;
 int device_init_wakeup (TYPE_3__*,int) ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct wl1271*) ;
 struct wl1271* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_dont_use_autosuspend (TYPE_3__*) ;
 int pm_runtime_get_sync (TYPE_3__*) ;
 int pm_runtime_put_sync (TYPE_3__*) ;
 int wait_for_completion (int *) ;
 int wl1271_unregister_hw (struct wl1271*) ;
 int wlcore_free_hw (struct wl1271*) ;

int wlcore_remove(struct platform_device *pdev)
{
 struct wlcore_platdev_data *pdev_data = dev_get_platdata(&pdev->dev);
 struct wl1271 *wl = platform_get_drvdata(pdev);
 int error;

 error = pm_runtime_get_sync(wl->dev);
 if (error < 0)
  dev_warn(wl->dev, "PM runtime failed: %i\n", error);

 wl->dev->driver->pm = ((void*)0);

 if (pdev_data->family && pdev_data->family->nvs_name)
  wait_for_completion(&wl->nvs_loading_complete);
 if (!wl->initialized)
  return 0;

 if (wl->wakeirq >= 0) {
  dev_pm_clear_wake_irq(wl->dev);
  wl->wakeirq = -ENODEV;
 }

 device_init_wakeup(wl->dev, 0);

 if (wl->irq_wake_enabled)
  disable_irq_wake(wl->irq);

 wl1271_unregister_hw(wl);

 pm_runtime_put_sync(wl->dev);
 pm_runtime_dont_use_autosuspend(wl->dev);
 pm_runtime_disable(wl->dev);

 free_irq(wl->irq, wl);
 wlcore_free_hw(wl);

 return 0;
}
