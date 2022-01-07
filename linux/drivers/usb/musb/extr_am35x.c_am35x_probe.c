
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_info {int size_data; struct musb_hdrc_platform_data* data; int num_res; int res; int * parent; } ;
struct platform_device {int dev; int num_resources; int resource; } ;
struct musb_hdrc_platform_data {int * platform_ops; } ;
struct clk {int dev; int num_resources; int resource; } ;
struct am35x_glue {struct platform_device* phy; struct platform_device* musb; struct platform_device* clk; struct platform_device* phy_clk; int * dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 struct platform_device_info am35x_dev_info ;
 int am35x_ops ;
 int clk_disable (struct platform_device*) ;
 int clk_enable (struct platform_device*) ;
 struct platform_device* clk_get (int *,char*) ;
 int clk_put (struct platform_device*) ;
 int dev_err (int *,char*,...) ;
 struct musb_hdrc_platform_data* dev_get_platdata (int *) ;
 int kfree (struct am35x_glue*) ;
 struct am35x_glue* kzalloc (int,int ) ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;
 int platform_set_drvdata (struct platform_device*,struct am35x_glue*) ;
 struct platform_device* usb_phy_generic_register () ;
 int usb_phy_generic_unregister (struct platform_device*) ;

__attribute__((used)) static int am35x_probe(struct platform_device *pdev)
{
 struct musb_hdrc_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct platform_device *musb;
 struct am35x_glue *glue;
 struct platform_device_info pinfo;
 struct clk *phy_clk;
 struct clk *clk;

 int ret = -ENOMEM;

 glue = kzalloc(sizeof(*glue), GFP_KERNEL);
 if (!glue)
  goto err0;

 phy_clk = clk_get(&pdev->dev, "fck");
 if (IS_ERR(phy_clk)) {
  dev_err(&pdev->dev, "failed to get PHY clock\n");
  ret = PTR_ERR(phy_clk);
  goto err3;
 }

 clk = clk_get(&pdev->dev, "ick");
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  ret = PTR_ERR(clk);
  goto err4;
 }

 ret = clk_enable(phy_clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable PHY clock\n");
  goto err5;
 }

 ret = clk_enable(clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable clock\n");
  goto err6;
 }

 glue->dev = &pdev->dev;
 glue->phy_clk = phy_clk;
 glue->clk = clk;

 pdata->platform_ops = &am35x_ops;

 glue->phy = usb_phy_generic_register();
 if (IS_ERR(glue->phy)) {
  ret = PTR_ERR(glue->phy);
  goto err7;
 }
 platform_set_drvdata(pdev, glue);

 pinfo = am35x_dev_info;
 pinfo.parent = &pdev->dev;
 pinfo.res = pdev->resource;
 pinfo.num_res = pdev->num_resources;
 pinfo.data = pdata;
 pinfo.size_data = sizeof(*pdata);

 glue->musb = musb = platform_device_register_full(&pinfo);
 if (IS_ERR(musb)) {
  ret = PTR_ERR(musb);
  dev_err(&pdev->dev, "failed to register musb device: %d\n", ret);
  goto err8;
 }

 return 0;

err8:
 usb_phy_generic_unregister(glue->phy);

err7:
 clk_disable(clk);

err6:
 clk_disable(phy_clk);

err5:
 clk_put(clk);

err4:
 clk_put(phy_clk);

err3:
 kfree(glue);

err0:
 return ret;
}
