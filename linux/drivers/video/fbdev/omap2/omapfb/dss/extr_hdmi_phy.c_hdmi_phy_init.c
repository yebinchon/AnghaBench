
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hdmi_phy_data {int base; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int hdmi_phy_get_features () ;
 int phy_feat ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_phy_init(struct platform_device *pdev, struct hdmi_phy_data *phy)
{
 struct resource *res;

 phy_feat = hdmi_phy_get_features();
 if (!phy_feat)
  return -ENODEV;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
 if (!res) {
  DSSERR("can't get PHY mem resource\n");
  return -EINVAL;
 }

 phy->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(phy->base)) {
  DSSERR("can't ioremap TX PHY\n");
  return PTR_ERR(phy->base);
 }

 return 0;
}
