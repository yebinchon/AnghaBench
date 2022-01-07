
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wlcore_platdev_data {TYPE_1__* family; } ;
struct wl1271 {TYPE_3__* dev; int nvs_loading_complete; struct platform_device* pdev; int ptable; int ops; } ;
struct TYPE_10__ {TYPE_2__* driver; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_9__ {int * pm; } ;
struct TYPE_8__ {char* nvs_name; } ;


 int EINVAL ;
 int FW_ACTION_HOTPLUG ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int complete_all (int *) ;
 struct wlcore_platdev_data* dev_get_platdata (TYPE_3__*) ;
 int platform_set_drvdata (struct platform_device*,struct wl1271*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_3__*,int) ;
 int pm_runtime_use_autosuspend (TYPE_3__*) ;
 int request_firmware_nowait (int ,int ,char const*,TYPE_3__*,int ,struct wl1271*,int (*) (int *,struct wl1271*)) ;
 int wl1271_error (char*,char const*,int) ;
 int wlcore_nvs_cb (int *,struct wl1271*) ;
 int wlcore_pm_ops ;

int wlcore_probe(struct wl1271 *wl, struct platform_device *pdev)
{
 struct wlcore_platdev_data *pdev_data = dev_get_platdata(&pdev->dev);
 const char *nvs_name;
 int ret = 0;

 if (!wl->ops || !wl->ptable || !pdev_data)
  return -EINVAL;

 wl->dev = &pdev->dev;
 wl->pdev = pdev;
 platform_set_drvdata(pdev, wl);

 if (pdev_data->family && pdev_data->family->nvs_name) {
  nvs_name = pdev_data->family->nvs_name;
  ret = request_firmware_nowait(THIS_MODULE, FW_ACTION_HOTPLUG,
           nvs_name, &pdev->dev, GFP_KERNEL,
           wl, wlcore_nvs_cb);
  if (ret < 0) {
   wl1271_error("request_firmware_nowait failed for %s: %d",
         nvs_name, ret);
   complete_all(&wl->nvs_loading_complete);
  }
 } else {
  wlcore_nvs_cb(((void*)0), wl);
 }

 wl->dev->driver->pm = &wlcore_pm_ops;
 pm_runtime_set_autosuspend_delay(wl->dev, 50);
 pm_runtime_use_autosuspend(wl->dev);
 pm_runtime_enable(wl->dev);

 return ret;
}
