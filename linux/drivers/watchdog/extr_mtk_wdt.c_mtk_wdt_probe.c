
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {void* timeout; struct device* parent; int min_timeout; void* max_timeout; int * ops; int * info; } ;
struct mtk_wdt_dev {TYPE_1__ wdt_dev; int wdt_base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* WDT_MAX_TIMEOUT ;
 int WDT_MIN_TIMEOUT ;
 int dev_info (struct device*,char*,void*,int ) ;
 struct mtk_wdt_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int mtk_wdt_info ;
 int mtk_wdt_ops ;
 int mtk_wdt_stop (TYPE_1__*) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct mtk_wdt_dev*) ;
 int timeout ;
 scalar_t__ unlikely (int) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct mtk_wdt_dev*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int mtk_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mtk_wdt_dev *mtk_wdt;
 int err;

 mtk_wdt = devm_kzalloc(dev, sizeof(*mtk_wdt), GFP_KERNEL);
 if (!mtk_wdt)
  return -ENOMEM;

 platform_set_drvdata(pdev, mtk_wdt);

 mtk_wdt->wdt_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mtk_wdt->wdt_base))
  return PTR_ERR(mtk_wdt->wdt_base);

 mtk_wdt->wdt_dev.info = &mtk_wdt_info;
 mtk_wdt->wdt_dev.ops = &mtk_wdt_ops;
 mtk_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
 mtk_wdt->wdt_dev.max_timeout = WDT_MAX_TIMEOUT;
 mtk_wdt->wdt_dev.min_timeout = WDT_MIN_TIMEOUT;
 mtk_wdt->wdt_dev.parent = dev;

 watchdog_init_timeout(&mtk_wdt->wdt_dev, timeout, dev);
 watchdog_set_nowayout(&mtk_wdt->wdt_dev, nowayout);
 watchdog_set_restart_priority(&mtk_wdt->wdt_dev, 128);

 watchdog_set_drvdata(&mtk_wdt->wdt_dev, mtk_wdt);

 mtk_wdt_stop(&mtk_wdt->wdt_dev);

 watchdog_stop_on_reboot(&mtk_wdt->wdt_dev);
 err = devm_watchdog_register_device(dev, &mtk_wdt->wdt_dev);
 if (unlikely(err))
  return err;

 dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)\n",
   mtk_wdt->wdt_dev.timeout, nowayout);

 return 0;
}
