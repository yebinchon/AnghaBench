
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {int max_timeout; struct device* parent; int timeout; int min_timeout; int * ops; int * info; } ;
struct lpc18xx_wdt_dev {int clk_rate; TYPE_1__ wdt_dev; int timer; int lock; void* wdt_clk; void* reg_clk; void* base; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int LPC18XX_WDT_CLK_DIV ;
 int LPC18XX_WDT_DEF_TIMEOUT ;
 int LPC18XX_WDT_TC_MAX ;
 int LPC18XX_WDT_TC_MIN ;
 int PTR_ERR (void*) ;
 int __lpc18xx_wdt_set_timeout (struct lpc18xx_wdt_dev*) ;
 int clk_get_rate (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,void*) ;
 void* devm_clk_get (struct device*,char*) ;
 struct lpc18xx_wdt_dev* devm_kzalloc (struct device*,int,int ) ;
 void* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int heartbeat ;
 int lpc18xx_clk_disable_unprepare ;
 int lpc18xx_wdt_info ;
 int lpc18xx_wdt_ops ;
 int lpc18xx_wdt_timer_feed ;
 int min (int,int ) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct lpc18xx_wdt_dev*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct lpc18xx_wdt_dev*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int lpc18xx_wdt_probe(struct platform_device *pdev)
{
 struct lpc18xx_wdt_dev *lpc18xx_wdt;
 struct device *dev = &pdev->dev;
 int ret;

 lpc18xx_wdt = devm_kzalloc(dev, sizeof(*lpc18xx_wdt), GFP_KERNEL);
 if (!lpc18xx_wdt)
  return -ENOMEM;

 lpc18xx_wdt->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(lpc18xx_wdt->base))
  return PTR_ERR(lpc18xx_wdt->base);

 lpc18xx_wdt->reg_clk = devm_clk_get(dev, "reg");
 if (IS_ERR(lpc18xx_wdt->reg_clk)) {
  dev_err(dev, "failed to get the reg clock\n");
  return PTR_ERR(lpc18xx_wdt->reg_clk);
 }

 lpc18xx_wdt->wdt_clk = devm_clk_get(dev, "wdtclk");
 if (IS_ERR(lpc18xx_wdt->wdt_clk)) {
  dev_err(dev, "failed to get the wdt clock\n");
  return PTR_ERR(lpc18xx_wdt->wdt_clk);
 }

 ret = clk_prepare_enable(lpc18xx_wdt->reg_clk);
 if (ret) {
  dev_err(dev, "could not prepare or enable sys clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, lpc18xx_clk_disable_unprepare,
           lpc18xx_wdt->reg_clk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(lpc18xx_wdt->wdt_clk);
 if (ret) {
  dev_err(dev, "could not prepare or enable wdt clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, lpc18xx_clk_disable_unprepare,
           lpc18xx_wdt->wdt_clk);
 if (ret)
  return ret;


 lpc18xx_wdt->clk_rate = clk_get_rate(lpc18xx_wdt->wdt_clk);
 if (lpc18xx_wdt->clk_rate == 0) {
  dev_err(dev, "failed to get clock rate\n");
  return -EINVAL;
 }

 lpc18xx_wdt->wdt_dev.info = &lpc18xx_wdt_info;
 lpc18xx_wdt->wdt_dev.ops = &lpc18xx_wdt_ops;

 lpc18xx_wdt->wdt_dev.min_timeout = DIV_ROUND_UP(LPC18XX_WDT_TC_MIN *
    LPC18XX_WDT_CLK_DIV, lpc18xx_wdt->clk_rate);

 lpc18xx_wdt->wdt_dev.max_timeout = (LPC18XX_WDT_TC_MAX *
    LPC18XX_WDT_CLK_DIV) / lpc18xx_wdt->clk_rate;

 lpc18xx_wdt->wdt_dev.timeout = min(lpc18xx_wdt->wdt_dev.max_timeout,
        LPC18XX_WDT_DEF_TIMEOUT);

 spin_lock_init(&lpc18xx_wdt->lock);

 lpc18xx_wdt->wdt_dev.parent = dev;
 watchdog_set_drvdata(&lpc18xx_wdt->wdt_dev, lpc18xx_wdt);

 watchdog_init_timeout(&lpc18xx_wdt->wdt_dev, heartbeat, dev);

 __lpc18xx_wdt_set_timeout(lpc18xx_wdt);

 timer_setup(&lpc18xx_wdt->timer, lpc18xx_wdt_timer_feed, 0);

 watchdog_set_nowayout(&lpc18xx_wdt->wdt_dev, nowayout);
 watchdog_set_restart_priority(&lpc18xx_wdt->wdt_dev, 128);

 platform_set_drvdata(pdev, lpc18xx_wdt);

 watchdog_stop_on_reboot(&lpc18xx_wdt->wdt_dev);
 return devm_watchdog_register_device(dev, &lpc18xx_wdt->wdt_dev);
}
