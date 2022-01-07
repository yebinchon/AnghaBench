
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int timeout; struct device* parent; int * ops; int * info; } ;
struct xwdt_device {int wdt_interval; int * base; int * clk; int spinlock; struct watchdog_device xilinx_wdt_wdd; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int XWT_TIMER_FAILED ;
 int clk_disable (int *) ;
 int clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int *,int) ;
 int dev_warn (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,int *) ;
 int * devm_clk_get (struct device*,int *) ;
 struct xwdt_device* devm_kzalloc (struct device*,int,int ) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct xwdt_device*) ;
 int spin_lock_init (int *) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct xwdt_device*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int) ;
 int xilinx_wdt_ident ;
 int xilinx_wdt_ops ;
 int xwdt_clk_disable_unprepare ;
 int xwdt_selftest (struct xwdt_device*) ;

__attribute__((used)) static int xwdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int rc;
 u32 pfreq = 0, enable_once = 0;
 struct xwdt_device *xdev;
 struct watchdog_device *xilinx_wdt_wdd;

 xdev = devm_kzalloc(dev, sizeof(*xdev), GFP_KERNEL);
 if (!xdev)
  return -ENOMEM;

 xilinx_wdt_wdd = &xdev->xilinx_wdt_wdd;
 xilinx_wdt_wdd->info = &xilinx_wdt_ident;
 xilinx_wdt_wdd->ops = &xilinx_wdt_ops;
 xilinx_wdt_wdd->parent = dev;

 xdev->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(xdev->base))
  return PTR_ERR(xdev->base);

 rc = of_property_read_u32(dev->of_node, "xlnx,wdt-interval",
      &xdev->wdt_interval);
 if (rc)
  dev_warn(dev, "Parameter \"xlnx,wdt-interval\" not found\n");

 rc = of_property_read_u32(dev->of_node, "xlnx,wdt-enable-once",
      &enable_once);
 if (rc)
  dev_warn(dev,
    "Parameter \"xlnx,wdt-enable-once\" not found\n");

 watchdog_set_nowayout(xilinx_wdt_wdd, enable_once);

 xdev->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(xdev->clk)) {
  if (PTR_ERR(xdev->clk) != -ENOENT)
   return PTR_ERR(xdev->clk);





  xdev->clk = ((void*)0);

  rc = of_property_read_u32(dev->of_node, "clock-frequency",
       &pfreq);
  if (rc)
   dev_warn(dev,
     "The watchdog clock freq cannot be obtained\n");
 } else {
  pfreq = clk_get_rate(xdev->clk);
 }





 if (pfreq && xdev->wdt_interval)
  xilinx_wdt_wdd->timeout = 2 * ((1 << xdev->wdt_interval) /
       pfreq);

 spin_lock_init(&xdev->spinlock);
 watchdog_set_drvdata(xilinx_wdt_wdd, xdev);

 rc = clk_prepare_enable(xdev->clk);
 if (rc) {
  dev_err(dev, "unable to enable clock\n");
  return rc;
 }
 rc = devm_add_action_or_reset(dev, xwdt_clk_disable_unprepare,
          xdev->clk);
 if (rc)
  return rc;

 rc = xwdt_selftest(xdev);
 if (rc == XWT_TIMER_FAILED) {
  dev_err(dev, "SelfTest routine error\n");
  return rc;
 }

 rc = devm_watchdog_register_device(dev, xilinx_wdt_wdd);
 if (rc)
  return rc;

 clk_disable(xdev->clk);

 dev_info(dev, "Xilinx Watchdog Timer at %p with timeout %ds\n",
   xdev->base, xilinx_wdt_wdd->timeout);

 platform_set_drvdata(pdev, xdev);

 return 0;
}
