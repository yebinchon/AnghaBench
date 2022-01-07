
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int status; int timeout; TYPE_9__* parent; int * ops; int * info; } ;
struct sp805_wdt {TYPE_1__ wdd; int lock; struct amba_device* adev; int rate; int clk; int base; } ;
struct amba_id {int dummy; } ;
struct TYPE_18__ {scalar_t__ of_node; } ;
struct amba_device {TYPE_9__ dev; int res; } ;


 int DEFAULT_TIMEOUT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WDOG_HW_RUNNING ;
 int amba_set_drvdata (struct amba_device*,struct sp805_wdt*) ;
 int clk_get_rate (int ) ;
 int dev_err (TYPE_9__*,char*) ;
 int dev_info (TYPE_9__*,char*) ;
 int device_property_read_u64 (TYPE_9__*,char*,int *) ;
 int devm_clk_get (TYPE_9__*,int *) ;
 int devm_ioremap_resource (TYPE_9__*,int *) ;
 struct sp805_wdt* devm_kzalloc (TYPE_9__*,int,int ) ;
 scalar_t__ has_acpi_companion (TYPE_9__*) ;
 int nowayout ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,TYPE_9__*) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct sp805_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int wdt_enable (TYPE_1__*) ;
 int wdt_info ;
 scalar_t__ wdt_is_running (TYPE_1__*) ;
 int wdt_ops ;
 int wdt_setload (TYPE_1__*,int ) ;

__attribute__((used)) static int
sp805_wdt_probe(struct amba_device *adev, const struct amba_id *id)
{
 struct sp805_wdt *wdt;
 int ret = 0;

 wdt = devm_kzalloc(&adev->dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt) {
  ret = -ENOMEM;
  goto err;
 }

 wdt->base = devm_ioremap_resource(&adev->dev, &adev->res);
 if (IS_ERR(wdt->base))
  return PTR_ERR(wdt->base);

 if (adev->dev.of_node) {
  wdt->clk = devm_clk_get(&adev->dev, ((void*)0));
  if (IS_ERR(wdt->clk)) {
   dev_err(&adev->dev, "Clock not found\n");
   return PTR_ERR(wdt->clk);
  }
  wdt->rate = clk_get_rate(wdt->clk);
 } else if (has_acpi_companion(&adev->dev)) {





  device_property_read_u64(&adev->dev, "clock-frequency",
      &wdt->rate);
  if (!wdt->rate) {
   dev_err(&adev->dev, "no clock-frequency property\n");
   return -ENODEV;
  }
 }

 wdt->adev = adev;
 wdt->wdd.info = &wdt_info;
 wdt->wdd.ops = &wdt_ops;
 wdt->wdd.parent = &adev->dev;

 spin_lock_init(&wdt->lock);
 watchdog_set_nowayout(&wdt->wdd, nowayout);
 watchdog_set_drvdata(&wdt->wdd, wdt);
 watchdog_set_restart_priority(&wdt->wdd, 128);





 wdt->wdd.timeout = DEFAULT_TIMEOUT;
 watchdog_init_timeout(&wdt->wdd, 0, &adev->dev);
 wdt_setload(&wdt->wdd, wdt->wdd.timeout);





 if (wdt_is_running(&wdt->wdd)) {
  wdt_enable(&wdt->wdd);
  set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
 }

 ret = watchdog_register_device(&wdt->wdd);
 if (ret)
  goto err;
 amba_set_drvdata(adev, wdt);

 dev_info(&adev->dev, "registration successful\n");
 return 0;

err:
 dev_err(&adev->dev, "Probe Failed!!!\n");
 return ret;
}
