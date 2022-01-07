
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct dim2_hdm {scalar_t__ clk_speed; scalar_t__ io_base; int clk; } ;


 scalar_t__ CLK_512FS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 struct dim2_hdm* platform_get_drvdata (struct platform_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int rcar_m3_enable(struct platform_device *pdev)
{
 struct dim2_hdm *dev = platform_get_drvdata(pdev);
 u32 enable_512fs = dev->clk_speed == CLK_512FS;
 int ret;

 dev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dev->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(dev->clk);
 }

 ret = clk_prepare_enable(dev->clk);
 if (ret) {
  dev_err(&pdev->dev, "%s\n", "clk_prepare_enable failed");
  return ret;
 }


 writel(0x04, dev->io_base + 0x600);

 writel(enable_512fs, dev->io_base + 0x604);


 writel(0x03, dev->io_base + 0x500);
 writel(0x0002FF02, dev->io_base + 0x508);

 return 0;
}
