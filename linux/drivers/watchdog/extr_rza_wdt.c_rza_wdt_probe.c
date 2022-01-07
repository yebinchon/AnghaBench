
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {unsigned long max_timeout; int max_hw_heartbeat_ms; int min_timeout; int timeout; struct device* parent; int * ops; int * info; } ;
struct rza_wdt {scalar_t__ cks; TYPE_1__ wdev; int clk; int base; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ CKS_3BIT ;
 scalar_t__ CKS_4BIT ;
 int DEFAULT_TIMEOUT ;
 unsigned long DIVIDER_3BIT ;
 unsigned long DIVIDER_4BIT ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned long U8_MAX ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 struct rza_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int rza_wdt_ident ;
 int rza_wdt_ops ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct rza_wdt*) ;

__attribute__((used)) static int rza_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct rza_wdt *priv;
 unsigned long rate;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 rate = clk_get_rate(priv->clk);
 if (rate < 16384) {
  dev_err(dev, "invalid clock rate (%ld)\n", rate);
  return -ENOENT;
 }

 priv->wdev.info = &rza_wdt_ident,
 priv->wdev.ops = &rza_wdt_ops,
 priv->wdev.parent = dev;

 priv->cks = (u8)(uintptr_t) of_device_get_match_data(dev);
 if (priv->cks == CKS_4BIT) {

  priv->wdev.max_timeout = (DIVIDER_4BIT * U8_MAX) / rate;

 } else if (priv->cks == CKS_3BIT) {

  rate /= DIVIDER_3BIT;






  priv->wdev.max_hw_heartbeat_ms = (1000 * U8_MAX) / rate;
  dev_dbg(dev, "max hw timeout of %dms\n",
   priv->wdev.max_hw_heartbeat_ms);
 }

 priv->wdev.min_timeout = 1;
 priv->wdev.timeout = DEFAULT_TIMEOUT;

 watchdog_init_timeout(&priv->wdev, 0, dev);
 watchdog_set_drvdata(&priv->wdev, priv);

 ret = devm_watchdog_register_device(dev, &priv->wdev);
 if (ret)
  dev_err(dev, "Cannot register watchdog device\n");

 return ret;
}
