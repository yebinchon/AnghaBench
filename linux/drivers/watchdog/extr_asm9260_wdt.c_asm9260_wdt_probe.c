
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int timeout; struct device* parent; int max_timeout; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct asm9260_wdt_priv {size_t mode; scalar_t__ irq; int wdt_freq; struct watchdog_device wdd; int rst; int iobase; struct device* dev; } ;


 int ASM9260_WDT_DEFAULT_TIMEOUT ;
 int BM_WDTC_MAX (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HW_RESET ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int asm9260_wdt_get_dt_clks (struct asm9260_wdt_priv*) ;
 int asm9260_wdt_get_dt_mode (struct asm9260_wdt_priv*) ;
 int asm9260_wdt_ident ;
 int asm9260_wdt_irq ;
 int asm9260_wdt_ops ;
 int dev_info (struct device*,char*,int ,char const* const) ;
 int dev_warn (struct device*,char*) ;
 struct asm9260_wdt_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,scalar_t__,int ,int ,int ,struct asm9260_wdt_priv*) ;
 int devm_reset_control_get_exclusive (struct device*,char*) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct asm9260_wdt_priv*) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct asm9260_wdt_priv*) ;
 int watchdog_set_restart_priority (struct watchdog_device*,int) ;
 int watchdog_stop_on_reboot (struct watchdog_device*) ;
 int watchdog_stop_on_unregister (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct asm9260_wdt_priv *priv;
 struct watchdog_device *wdd;
 int ret;
 static const char * const mode_name[] = { "hw", "sw", "debug", };

 priv = devm_kzalloc(dev, sizeof(struct asm9260_wdt_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = dev;

 priv->iobase = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->iobase))
  return PTR_ERR(priv->iobase);

 priv->rst = devm_reset_control_get_exclusive(dev, "wdt_rst");
 if (IS_ERR(priv->rst))
  return PTR_ERR(priv->rst);

 ret = asm9260_wdt_get_dt_clks(priv);
 if (ret)
  return ret;

 wdd = &priv->wdd;
 wdd->info = &asm9260_wdt_ident;
 wdd->ops = &asm9260_wdt_ops;
 wdd->min_timeout = 1;
 wdd->max_timeout = BM_WDTC_MAX(priv->wdt_freq);
 wdd->parent = dev;

 watchdog_set_drvdata(wdd, priv);






 wdd->timeout = ASM9260_WDT_DEFAULT_TIMEOUT;
 watchdog_init_timeout(wdd, 0, dev);

 asm9260_wdt_get_dt_mode(priv);

 if (priv->mode != HW_RESET)
  priv->irq = platform_get_irq(pdev, 0);

 if (priv->irq > 0) {




  ret = devm_request_irq(dev, priv->irq, asm9260_wdt_irq, 0,
           pdev->name, priv);
  if (ret < 0)
   dev_warn(dev, "failed to request IRQ\n");
 }

 watchdog_set_restart_priority(wdd, 128);

 watchdog_stop_on_reboot(wdd);
 watchdog_stop_on_unregister(wdd);
 ret = devm_watchdog_register_device(dev, wdd);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, priv);

 dev_info(dev, "Watchdog enabled (timeout: %d sec, mode: %s)\n",
   wdd->timeout, mode_name[priv->mode]);
 return 0;
}
