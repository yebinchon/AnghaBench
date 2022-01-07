
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ar7_regs_wdt ;
 int * ar7_wdt ;
 int ar7_wdt_disable_wdt () ;
 int ar7_wdt_miscdev ;
 int ar7_wdt_prescale (int ) ;
 int ar7_wdt_update_margin (int ) ;
 int * clk_get (int *,char*) ;
 int clk_put (int *) ;
 int * devm_ioremap_resource (int *,int ) ;
 int margin ;
 int misc_register (int *) ;
 int platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int pr_err (char*) ;
 int prescale_value ;
 int * vbus_clk ;

__attribute__((used)) static int ar7_wdt_probe(struct platform_device *pdev)
{
 int rc;

 ar7_regs_wdt =
  platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
 ar7_wdt = devm_ioremap_resource(&pdev->dev, ar7_regs_wdt);
 if (IS_ERR(ar7_wdt))
  return PTR_ERR(ar7_wdt);

 vbus_clk = clk_get(((void*)0), "vbus");
 if (IS_ERR(vbus_clk)) {
  pr_err("could not get vbus clock\n");
  return PTR_ERR(vbus_clk);
 }

 ar7_wdt_disable_wdt();
 ar7_wdt_prescale(prescale_value);
 ar7_wdt_update_margin(margin);

 rc = misc_register(&ar7_wdt_miscdev);
 if (rc) {
  pr_err("unable to register misc device\n");
  goto out;
 }
 return 0;

out:
 clk_put(vbus_clk);
 vbus_clk = ((void*)0);
 return rc;
}
