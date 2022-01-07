
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int timeout; int status; struct device* parent; int bootstatus; } ;


 int COUNT_ENAB ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WDIOF_CARDRESET ;
 int WDOG_HW_RUNNING ;
 int WDOG_RESET ;
 int WDTIM_CTRL (int ) ;
 int WDTIM_RES (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_info (struct device*,char*,int ) ;
 int devm_add_action_or_reset (struct device*,int ,int ) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int heartbeat ;
 int nowayout ;
 int pnx4008_clk_disable_unprepare ;
 TYPE_1__ pnx4008_wdd ;
 int readl (int ) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int wdt_base ;
 int wdt_clk ;

__attribute__((used)) static int pnx4008_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret = 0;

 watchdog_init_timeout(&pnx4008_wdd, heartbeat, dev);

 wdt_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt_base))
  return PTR_ERR(wdt_base);

 wdt_clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(wdt_clk))
  return PTR_ERR(wdt_clk);

 ret = clk_prepare_enable(wdt_clk);
 if (ret)
  return ret;
 ret = devm_add_action_or_reset(dev, pnx4008_clk_disable_unprepare,
           wdt_clk);
 if (ret)
  return ret;

 pnx4008_wdd.bootstatus = (readl(WDTIM_RES(wdt_base)) & WDOG_RESET) ?
   WDIOF_CARDRESET : 0;
 pnx4008_wdd.parent = dev;
 watchdog_set_nowayout(&pnx4008_wdd, nowayout);
 watchdog_set_restart_priority(&pnx4008_wdd, 128);

 if (readl(WDTIM_CTRL(wdt_base)) & COUNT_ENAB)
  set_bit(WDOG_HW_RUNNING, &pnx4008_wdd.status);

 ret = devm_watchdog_register_device(dev, &pnx4008_wdd);
 if (ret < 0)
  return ret;

 dev_info(dev, "heartbeat %d sec\n", pnx4008_wdd.timeout);

 return 0;
}
