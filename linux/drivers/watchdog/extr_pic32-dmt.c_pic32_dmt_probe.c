
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int bootstatus; int timeout; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pic32_dmt {int clk; int regs; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WATCHDOG_NOWAYOUT ;
 int WDIOF_CARDRESET ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int devm_add_action_or_reset (struct device*,int ,int ) ;
 int devm_clk_get (struct device*,int *) ;
 struct pic32_dmt* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int pic32_clk_disable_unprepare ;
 scalar_t__ pic32_dmt_bootstatus (struct pic32_dmt*) ;
 int pic32_dmt_get_timeout_secs (struct pic32_dmt*) ;
 struct watchdog_device pic32_dmt_wdd ;
 int platform_set_drvdata (struct platform_device*,struct watchdog_device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct pic32_dmt*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int pic32_dmt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret;
 struct pic32_dmt *dmt;
 struct watchdog_device *wdd = &pic32_dmt_wdd;

 dmt = devm_kzalloc(dev, sizeof(*dmt), GFP_KERNEL);
 if (!dmt)
  return -ENOMEM;

 dmt->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(dmt->regs))
  return PTR_ERR(dmt->regs);

 dmt->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(dmt->clk)) {
  dev_err(dev, "clk not found\n");
  return PTR_ERR(dmt->clk);
 }

 ret = clk_prepare_enable(dmt->clk);
 if (ret)
  return ret;
 ret = devm_add_action_or_reset(dev, pic32_clk_disable_unprepare,
           dmt->clk);
 if (ret)
  return ret;

 wdd->timeout = pic32_dmt_get_timeout_secs(dmt);
 if (!wdd->timeout) {
  dev_err(dev, "failed to read watchdog register timeout\n");
  return -EINVAL;
 }

 dev_info(dev, "timeout %d\n", wdd->timeout);

 wdd->bootstatus = pic32_dmt_bootstatus(dmt) ? WDIOF_CARDRESET : 0;

 watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
 watchdog_set_drvdata(wdd, dmt);

 ret = devm_watchdog_register_device(dev, wdd);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, wdd);
 return 0;
}
