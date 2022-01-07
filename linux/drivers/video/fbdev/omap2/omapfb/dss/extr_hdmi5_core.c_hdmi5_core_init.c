
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hdmi_core_data {int base; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi5_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
{
 struct resource *res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
 if (!res) {
  DSSERR("can't get CORE IORESOURCE_MEM HDMI\n");
  return -EINVAL;
 }

 core->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(core->base)) {
  DSSERR("can't ioremap HDMI core\n");
  return PTR_ERR(core->base);
 }

 return 0;
}
