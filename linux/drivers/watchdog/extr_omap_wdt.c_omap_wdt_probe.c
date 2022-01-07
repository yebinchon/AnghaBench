
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_5__ {int timeout; int bootstatus; int * parent; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct omap_wdt_dev {int omap_wdt_users; int wdt_trgr_pattern; int * dev; TYPE_1__ wdog; scalar_t__ base; int lock; } ;
struct omap_wd_timer_platform_data {int (* read_reset_sources ) () ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int OMAP_MPU_WD_RST_SRC_ID_SHIFT ;
 scalar_t__ OMAP_WATCHDOG_REV ;
 int PTR_ERR (scalar_t__) ;
 int TIMER_MARGIN_DEFAULT ;
 int TIMER_MARGIN_MAX ;
 int TIMER_MARGIN_MIN ;
 int WDIOF_CARDRESET ;
 struct omap_wd_timer_platform_data* dev_get_platdata (int *) ;
 struct omap_wdt_dev* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 scalar_t__ early_enable ;
 int mutex_init (int *) ;
 int nowayout ;
 int omap_wdt_disable (struct omap_wdt_dev*) ;
 int omap_wdt_info ;
 int omap_wdt_ops ;
 int omap_wdt_start (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct omap_wdt_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pr_info (char*,int,int ) ;
 int readl_relaxed (scalar_t__) ;
 int stub1 () ;
 int timer_margin ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int omap_wdt_probe(struct platform_device *pdev)
{
 struct omap_wd_timer_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct omap_wdt_dev *wdev;
 int ret;

 wdev = devm_kzalloc(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
 if (!wdev)
  return -ENOMEM;

 wdev->omap_wdt_users = 0;
 wdev->dev = &pdev->dev;
 wdev->wdt_trgr_pattern = 0x1234;
 mutex_init(&wdev->lock);


 wdev->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdev->base))
  return PTR_ERR(wdev->base);

 wdev->wdog.info = &omap_wdt_info;
 wdev->wdog.ops = &omap_wdt_ops;
 wdev->wdog.min_timeout = TIMER_MARGIN_MIN;
 wdev->wdog.max_timeout = TIMER_MARGIN_MAX;
 wdev->wdog.timeout = TIMER_MARGIN_DEFAULT;
 wdev->wdog.parent = &pdev->dev;

 watchdog_init_timeout(&wdev->wdog, timer_margin, &pdev->dev);

 watchdog_set_nowayout(&wdev->wdog, nowayout);

 platform_set_drvdata(pdev, wdev);

 pm_runtime_enable(wdev->dev);
 pm_runtime_get_sync(wdev->dev);

 if (pdata && pdata->read_reset_sources) {
  u32 rs = pdata->read_reset_sources();
  if (rs & (1 << OMAP_MPU_WD_RST_SRC_ID_SHIFT))
   wdev->wdog.bootstatus = WDIOF_CARDRESET;
 }

 if (!early_enable)
  omap_wdt_disable(wdev);

 ret = watchdog_register_device(&wdev->wdog);
 if (ret) {
  pm_runtime_disable(wdev->dev);
  return ret;
 }

 pr_info("OMAP Watchdog Timer Rev 0x%02x: initial timeout %d sec\n",
  readl_relaxed(wdev->base + OMAP_WATCHDOG_REV) & 0xFF,
  wdev->wdog.timeout);

 if (early_enable)
  omap_wdt_start(&wdev->wdog);

 pm_runtime_put(wdev->dev);

 return 0;
}
