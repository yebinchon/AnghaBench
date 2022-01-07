
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int dummy; } ;
struct platform_device {int dev; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct tegra_xusb_padctl* ERR_PTR (int ) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 struct tegra_xusb_padctl* platform_get_drvdata (struct platform_device*) ;
 int put_device (int *) ;

struct tegra_xusb_padctl *tegra_xusb_padctl_get(struct device *dev)
{
 struct tegra_xusb_padctl *padctl;
 struct platform_device *pdev;
 struct device_node *np;

 np = of_parse_phandle(dev->of_node, "nvidia,xusb-padctl", 0);
 if (!np)
  return ERR_PTR(-EINVAL);






 pdev = of_find_device_by_node(np);
 if (!pdev) {
  of_node_put(np);
  return ERR_PTR(-ENODEV);
 }

 of_node_put(np);

 padctl = platform_get_drvdata(pdev);
 if (!padctl) {
  put_device(&pdev->dev);
  return ERR_PTR(-EPROBE_DEFER);
 }

 return padctl;
}
