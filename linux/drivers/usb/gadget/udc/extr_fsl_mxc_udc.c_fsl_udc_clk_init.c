
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; TYPE_1__* id_entry; } ;
struct fsl_usb2_platform_data {scalar_t__ phy_mode; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 scalar_t__ FSL_USB2_PHY_ULPI ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int clk_disable_unprepare (int *) ;
 unsigned long clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (int *,char*,...) ;
 struct fsl_usb2_platform_data* dev_get_platdata (int *) ;
 int * devm_clk_get (int *,char*) ;
 int * mxc_ahb_clk ;
 int * mxc_ipg_clk ;
 int * mxc_per_clk ;
 int strcmp (int ,char*) ;

int fsl_udc_clk_init(struct platform_device *pdev)
{
 struct fsl_usb2_platform_data *pdata;
 unsigned long freq;
 int ret;

 pdata = dev_get_platdata(&pdev->dev);

 mxc_ipg_clk = devm_clk_get(&pdev->dev, "ipg");
 if (IS_ERR(mxc_ipg_clk)) {
  dev_err(&pdev->dev, "clk_get(\"ipg\") failed\n");
  return PTR_ERR(mxc_ipg_clk);
 }

 mxc_ahb_clk = devm_clk_get(&pdev->dev, "ahb");
 if (IS_ERR(mxc_ahb_clk)) {
  dev_err(&pdev->dev, "clk_get(\"ahb\") failed\n");
  return PTR_ERR(mxc_ahb_clk);
 }

 mxc_per_clk = devm_clk_get(&pdev->dev, "per");
 if (IS_ERR(mxc_per_clk)) {
  dev_err(&pdev->dev, "clk_get(\"per\") failed\n");
  return PTR_ERR(mxc_per_clk);
 }

 clk_prepare_enable(mxc_ipg_clk);
 clk_prepare_enable(mxc_ahb_clk);
 clk_prepare_enable(mxc_per_clk);


 if (!strcmp(pdev->id_entry->name, "imx-udc-mx27")) {
  freq = clk_get_rate(mxc_per_clk);
  if (pdata->phy_mode != FSL_USB2_PHY_ULPI &&
      (freq < 59999000 || freq > 60001000)) {
   dev_err(&pdev->dev, "USB_CLK=%lu, should be 60MHz\n", freq);
   ret = -EINVAL;
   goto eclkrate;
  }
 }

 return 0;

eclkrate:
 clk_disable_unprepare(mxc_ipg_clk);
 clk_disable_unprepare(mxc_ahb_clk);
 clk_disable_unprepare(mxc_per_clk);
 mxc_per_clk = ((void*)0);
 return ret;
}
