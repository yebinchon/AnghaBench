
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_xusb_padctl {int rst; } ;
struct platform_device {int dev; } ;


 int dev_err (int *,char*,int) ;
 struct tegra_xusb_padctl* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

int tegra_xusb_padctl_legacy_remove(struct platform_device *pdev)
{
 struct tegra_xusb_padctl *padctl = platform_get_drvdata(pdev);
 int err;

 err = reset_control_assert(padctl->rst);
 if (err < 0)
  dev_err(&pdev->dev, "failed to assert reset: %d\n", err);

 return err;
}
