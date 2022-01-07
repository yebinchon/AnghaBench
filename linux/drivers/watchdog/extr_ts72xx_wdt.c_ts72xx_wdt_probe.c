
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int max_hw_heartbeat_ms; int timeout; struct device* parent; int * ops; int * info; } ;
struct ts72xx_wdt_priv {struct watchdog_device wdd; void* feed_reg; void* control_reg; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int TS72XX_WDT_DEFAULT_TIMEOUT ;
 int dev_info (struct device*,char*) ;
 struct ts72xx_wdt_priv* devm_kzalloc (struct device*,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int nowayout ;
 int timeout ;
 int ts72xx_wdt_ident ;
 int ts72xx_wdt_ops ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct ts72xx_wdt_priv*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int ts72xx_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ts72xx_wdt_priv *priv;
 struct watchdog_device *wdd;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->control_reg = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->control_reg))
  return PTR_ERR(priv->control_reg);

 priv->feed_reg = devm_platform_ioremap_resource(pdev, 1);
 if (IS_ERR(priv->feed_reg))
  return PTR_ERR(priv->feed_reg);

 wdd = &priv->wdd;
 wdd->info = &ts72xx_wdt_ident;
 wdd->ops = &ts72xx_wdt_ops;
 wdd->min_timeout = 1;
 wdd->max_hw_heartbeat_ms = 8000;
 wdd->parent = dev;

 watchdog_set_nowayout(wdd, nowayout);

 wdd->timeout = TS72XX_WDT_DEFAULT_TIMEOUT;
 watchdog_init_timeout(wdd, timeout, dev);

 watchdog_set_drvdata(wdd, priv);

 ret = devm_watchdog_register_device(dev, wdd);
 if (ret)
  return ret;

 dev_info(dev, "TS-72xx Watchdog driver\n");

 return 0;
}
