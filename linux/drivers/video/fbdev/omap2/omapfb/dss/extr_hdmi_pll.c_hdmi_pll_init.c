
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hdmi_wp_data {int dummy; } ;
struct hdmi_pll_data {int base; struct hdmi_wp_data* wp; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int dsi_init_pll_data (struct platform_device*,struct hdmi_pll_data*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;

int hdmi_pll_init(struct platform_device *pdev, struct hdmi_pll_data *pll,
 struct hdmi_wp_data *wp)
{
 int r;
 struct resource *res;

 pll->wp = wp;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "pll");
 if (!res) {
  DSSERR("can't get PLL mem resource\n");
  return -EINVAL;
 }

 pll->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pll->base)) {
  DSSERR("can't ioremap PLLCTRL\n");
  return PTR_ERR(pll->base);
 }

 r = dsi_init_pll_data(pdev, pll);
 if (r) {
  DSSERR("failed to init HDMI PLL\n");
  return r;
 }

 return 0;
}
