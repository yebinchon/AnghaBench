
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct hdmi_wp_data {int base; int phys_base; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_wp_init(struct platform_device *pdev, struct hdmi_wp_data *wp)
{
 struct resource *res;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "wp");
 if (!res) {
  DSSERR("can't get WP mem resource\n");
  return -EINVAL;
 }
 wp->phys_base = res->start;

 wp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(wp->base)) {
  DSSERR("can't ioremap HDMI WP\n");
  return PTR_ERR(wp->base);
 }

 return 0;
}
