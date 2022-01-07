
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int min_timeout; int max_timeout; int max_hw_heartbeat_ms; int timeout; int * ops; int * info; struct device* parent; } ;
struct tqmx86_wdt {TYPE_1__ wdd; int io_base; } ;
struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int WATCHDOG_NOWAYOUT ;
 int WDT_TIMEOUT ;
 int dev_info (struct device*,char*) ;
 int devm_ioport_map (struct device*,int ,int ) ;
 struct tqmx86_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int timeout ;
 int tqmx86_wdt_info ;
 int tqmx86_wdt_ops ;
 int tqmx86_wdt_set_timeout (TYPE_1__*,int ) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct tqmx86_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int tqmx86_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct tqmx86_wdt *priv;
 struct resource *res;
 int err;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!res)
  return -ENODEV;

 priv->io_base = devm_ioport_map(dev, res->start, resource_size(res));
 if (!priv->io_base)
  return -ENOMEM;

 watchdog_set_drvdata(&priv->wdd, priv);

 priv->wdd.parent = dev;
 priv->wdd.info = &tqmx86_wdt_info;
 priv->wdd.ops = &tqmx86_wdt_ops;
 priv->wdd.min_timeout = 1;
 priv->wdd.max_timeout = 4096;
 priv->wdd.max_hw_heartbeat_ms = 4096*1000;
 priv->wdd.timeout = WDT_TIMEOUT;

 watchdog_init_timeout(&priv->wdd, timeout, dev);
 watchdog_set_nowayout(&priv->wdd, WATCHDOG_NOWAYOUT);

 tqmx86_wdt_set_timeout(&priv->wdd, priv->wdd.timeout);

 err = devm_watchdog_register_device(dev, &priv->wdd);
 if (err)
  return err;

 dev_info(dev, "TQMx86 watchdog\n");

 return 0;
}
