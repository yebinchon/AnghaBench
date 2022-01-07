
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int min_timeout; int max_timeout; int timeout; struct device* parent; int * ops; int * info; } ;
struct rn5t618_wdt {TYPE_1__ wdt_dev; struct rn5t618* rn5t618; } ;
struct rn5t618 {int dummy; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_8__ {int time; } ;


 int ARRAY_SIZE (TYPE_5__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct rn5t618* dev_get_drvdata (int ) ;
 struct rn5t618_wdt* devm_kzalloc (struct device*,int,int ) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct rn5t618_wdt*) ;
 int rn5t618_wdt_info ;
 TYPE_5__* rn5t618_wdt_map ;
 int rn5t618_wdt_ops ;
 int timeout ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct rn5t618_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int rn5t618_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rn5t618 *rn5t618 = dev_get_drvdata(dev->parent);
 struct rn5t618_wdt *wdt;
 int min_timeout, max_timeout;

 wdt = devm_kzalloc(dev, sizeof(struct rn5t618_wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 min_timeout = rn5t618_wdt_map[0].time;
 max_timeout = rn5t618_wdt_map[ARRAY_SIZE(rn5t618_wdt_map) - 1].time;

 wdt->rn5t618 = rn5t618;
 wdt->wdt_dev.info = &rn5t618_wdt_info;
 wdt->wdt_dev.ops = &rn5t618_wdt_ops;
 wdt->wdt_dev.min_timeout = min_timeout;
 wdt->wdt_dev.max_timeout = max_timeout;
 wdt->wdt_dev.timeout = max_timeout;
 wdt->wdt_dev.parent = dev;

 watchdog_set_drvdata(&wdt->wdt_dev, wdt);
 watchdog_init_timeout(&wdt->wdt_dev, timeout, dev);
 watchdog_set_nowayout(&wdt->wdt_dev, nowayout);

 platform_set_drvdata(pdev, wdt);

 return watchdog_register_device(&wdt->wdt_dev);
}
