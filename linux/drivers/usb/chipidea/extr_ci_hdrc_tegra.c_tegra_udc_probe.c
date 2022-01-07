
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_udc_soc_info {int flags; } ;
struct TYPE_2__ {char* name; int capoffset; int usb_phy; int flags; } ;
struct tegra_udc {int clk; int phy; int dev; TYPE_1__ data; } ;
struct platform_device {int dev; int num_resources; int resource; } ;


 int DEF_CAPOFFSET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ci_hdrc_add_device (int *,int ,int ,TYPE_1__*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 struct tegra_udc* devm_kzalloc (int *,int,int ) ;
 int devm_usb_get_phy_by_phandle (int *,char*,int ) ;
 struct tegra_udc_soc_info* of_device_get_match_data (int *) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_udc*) ;
 int usb_phy_set_suspend (int ,int) ;

__attribute__((used)) static int tegra_udc_probe(struct platform_device *pdev)
{
 const struct tegra_udc_soc_info *soc;
 struct tegra_udc *udc;
 int err;

 udc = devm_kzalloc(&pdev->dev, sizeof(*udc), GFP_KERNEL);
 if (!udc)
  return -ENOMEM;

 soc = of_device_get_match_data(&pdev->dev);
 if (!soc) {
  dev_err(&pdev->dev, "failed to match OF data\n");
  return -EINVAL;
 }

 udc->phy = devm_usb_get_phy_by_phandle(&pdev->dev, "nvidia,phy", 0);
 if (IS_ERR(udc->phy)) {
  err = PTR_ERR(udc->phy);
  dev_err(&pdev->dev, "failed to get PHY: %d\n", err);
  return err;
 }

 udc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(udc->clk)) {
  err = PTR_ERR(udc->clk);
  dev_err(&pdev->dev, "failed to get clock: %d\n", err);
  return err;
 }

 err = clk_prepare_enable(udc->clk);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to enable clock: %d\n", err);
  return err;
 }






 usb_phy_set_suspend(udc->phy, 0);


 udc->data.name = "tegra-udc";
 udc->data.flags = soc->flags;
 udc->data.usb_phy = udc->phy;
 udc->data.capoffset = DEF_CAPOFFSET;

 udc->dev = ci_hdrc_add_device(&pdev->dev, pdev->resource,
          pdev->num_resources, &udc->data);
 if (IS_ERR(udc->dev)) {
  err = PTR_ERR(udc->dev);
  dev_err(&pdev->dev, "failed to add HDRC device: %d\n", err);
  goto fail_power_off;
 }

 platform_set_drvdata(pdev, udc);

 return 0;

fail_power_off:
 usb_phy_set_suspend(udc->phy, 1);
 clk_disable_unprepare(udc->clk);
 return err;
}
