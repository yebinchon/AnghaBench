
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int WDIOF_CARDRESET ;
 int WDOG_CTRL_LAST_RESET ;
 int WDOG_REG_CTRL ;
 int ath79_wdt_miscdev ;
 int ath79_wdt_rr (int ) ;
 int boot_status ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int) ;
 scalar_t__ devm_clk_get (int *,char*) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int max_timeout ;
 int misc_register (int *) ;
 int timeout ;
 scalar_t__ wdt_base ;
 scalar_t__ wdt_clk ;
 int wdt_freq ;

__attribute__((used)) static int ath79_wdt_probe(struct platform_device *pdev)
{
 u32 ctrl;
 int err;

 if (wdt_base)
  return -EBUSY;

 wdt_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt_base))
  return PTR_ERR(wdt_base);

 wdt_clk = devm_clk_get(&pdev->dev, "wdt");
 if (IS_ERR(wdt_clk))
  return PTR_ERR(wdt_clk);

 err = clk_prepare_enable(wdt_clk);
 if (err)
  return err;

 wdt_freq = clk_get_rate(wdt_clk);
 if (!wdt_freq) {
  err = -EINVAL;
  goto err_clk_disable;
 }

 max_timeout = (0xfffffffful / wdt_freq);
 if (timeout < 1 || timeout > max_timeout) {
  timeout = max_timeout;
  dev_info(&pdev->dev,
   "timeout value must be 0 < timeout < %d, using %d\n",
   max_timeout, timeout);
 }

 ctrl = ath79_wdt_rr(WDOG_REG_CTRL);
 boot_status = (ctrl & WDOG_CTRL_LAST_RESET) ? WDIOF_CARDRESET : 0;

 err = misc_register(&ath79_wdt_miscdev);
 if (err) {
  dev_err(&pdev->dev,
   "unable to register misc device, err=%d\n", err);
  goto err_clk_disable;
 }

 return 0;

err_clk_disable:
 clk_disable_unprepare(wdt_clk);
 return err;
}
