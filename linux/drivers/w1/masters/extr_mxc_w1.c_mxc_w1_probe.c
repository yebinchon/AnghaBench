
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int touch_bit; int reset_bus; struct mxc_w1_device* data; } ;
struct mxc_w1_device {scalar_t__ clk; TYPE_1__ bus_master; scalar_t__ regs; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ MXC_W1_RESET ;
 unsigned int MXC_W1_RESET_RST ;
 scalar_t__ MXC_W1_TIME_DIVIDER ;
 int PTR_ERR (scalar_t__) ;
 int clk_disable_unprepare (scalar_t__) ;
 unsigned long clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_warn (int *,char*,...) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 struct mxc_w1_device* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int mxc_w1_ds2_reset_bus ;
 int mxc_w1_ds2_touch_bit ;
 int platform_set_drvdata (struct platform_device*,struct mxc_w1_device*) ;
 int w1_add_master_device (TYPE_1__*) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int mxc_w1_probe(struct platform_device *pdev)
{
 struct mxc_w1_device *mdev;
 unsigned long clkrate;
 unsigned int clkdiv;
 int err;

 mdev = devm_kzalloc(&pdev->dev, sizeof(struct mxc_w1_device),
       GFP_KERNEL);
 if (!mdev)
  return -ENOMEM;

 mdev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mdev->clk))
  return PTR_ERR(mdev->clk);

 err = clk_prepare_enable(mdev->clk);
 if (err)
  return err;

 clkrate = clk_get_rate(mdev->clk);
 if (clkrate < 10000000)
  dev_warn(&pdev->dev,
    "Low clock frequency causes improper function\n");

 clkdiv = DIV_ROUND_CLOSEST(clkrate, 1000000);
 clkrate /= clkdiv;
 if ((clkrate < 980000) || (clkrate > 1020000))
  dev_warn(&pdev->dev,
    "Incorrect time base frequency %lu Hz\n", clkrate);

 mdev->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mdev->regs)) {
  err = PTR_ERR(mdev->regs);
  goto out_disable_clk;
 }


 writeb(MXC_W1_RESET_RST, mdev->regs + MXC_W1_RESET);
 writeb(0, mdev->regs + MXC_W1_RESET);

 writeb(clkdiv - 1, mdev->regs + MXC_W1_TIME_DIVIDER);

 mdev->bus_master.data = mdev;
 mdev->bus_master.reset_bus = mxc_w1_ds2_reset_bus;
 mdev->bus_master.touch_bit = mxc_w1_ds2_touch_bit;

 platform_set_drvdata(pdev, mdev);

 err = w1_add_master_device(&mdev->bus_master);
 if (err)
  goto out_disable_clk;

 return 0;

out_disable_clk:
 clk_disable_unprepare(mdev->clk);
 return err;
}
