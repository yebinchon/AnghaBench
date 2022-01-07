
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_wdt {int resp_required; struct mei_cl_device* cldev; int unregister; int response; int reg_lock; int state; int timeout; } ;
struct mei_cl_device_id {int dummy; } ;
struct mei_cl_device {int dev; } ;
struct TYPE_2__ {int firmware_version; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MEI_WDT_DEFAULT_TIMEOUT ;
 int MEI_WDT_PROBE ;
 int dbgfs_register (struct mei_wdt*) ;
 int dev_err (int *,char*,...) ;
 int init_completion (int *) ;
 int kfree (struct mei_wdt*) ;
 struct mei_wdt* kzalloc (int,int ) ;
 int mei_cldev_disable (struct mei_cl_device*) ;
 int mei_cldev_enable (struct mei_cl_device*) ;
 int mei_cldev_register_notif_cb (struct mei_cl_device*,int ) ;
 int mei_cldev_register_rx_cb (struct mei_cl_device*,int ) ;
 int mei_cldev_set_drvdata (struct mei_cl_device*,struct mei_wdt*) ;
 int mei_cldev_ver (struct mei_cl_device*) ;
 int mei_wdt_notif ;
 int mei_wdt_ping (struct mei_wdt*) ;
 int mei_wdt_register (struct mei_wdt*) ;
 int mei_wdt_rx ;
 int mei_wdt_unregister_work ;
 int mutex_init (int *) ;
 TYPE_1__ wd_info ;

__attribute__((used)) static int mei_wdt_probe(struct mei_cl_device *cldev,
    const struct mei_cl_device_id *id)
{
 struct mei_wdt *wdt;
 int ret;

 wdt = kzalloc(sizeof(struct mei_wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->timeout = MEI_WDT_DEFAULT_TIMEOUT;
 wdt->state = MEI_WDT_PROBE;
 wdt->cldev = cldev;
 wdt->resp_required = mei_cldev_ver(cldev) > 0x1;
 mutex_init(&wdt->reg_lock);
 init_completion(&wdt->response);
 INIT_WORK(&wdt->unregister, mei_wdt_unregister_work);

 mei_cldev_set_drvdata(cldev, wdt);

 ret = mei_cldev_enable(cldev);
 if (ret < 0) {
  dev_err(&cldev->dev, "Could not enable cl device\n");
  goto err_out;
 }

 ret = mei_cldev_register_rx_cb(wdt->cldev, mei_wdt_rx);
 if (ret) {
  dev_err(&cldev->dev, "Could not reg rx event ret=%d\n", ret);
  goto err_disable;
 }

 ret = mei_cldev_register_notif_cb(wdt->cldev, mei_wdt_notif);


 if (ret && ret != -EOPNOTSUPP) {
  dev_err(&cldev->dev, "Could not reg notif event ret=%d\n", ret);
  goto err_disable;
 }

 wd_info.firmware_version = mei_cldev_ver(cldev);

 if (wdt->resp_required)
  ret = mei_wdt_ping(wdt);
 else
  ret = mei_wdt_register(wdt);

 if (ret)
  goto err_disable;

 dbgfs_register(wdt);

 return 0;

err_disable:
 mei_cldev_disable(cldev);

err_out:
 kfree(wdt);

 return ret;
}
