
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_xusb_padctl {TYPE_2__* soc; int rst; int supplies; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {TYPE_1__* ops; int num_supplies; } ;
struct TYPE_3__ {int (* remove ) (struct tegra_xusb_padctl*) ;} ;


 int dev_err (int *,char*,int) ;
 struct tegra_xusb_padctl* platform_get_drvdata (struct platform_device*) ;
 int regulator_bulk_disable (int ,int ) ;
 int reset_control_assert (int ) ;
 int stub1 (struct tegra_xusb_padctl*) ;
 int tegra_xusb_remove_pads (struct tegra_xusb_padctl*) ;
 int tegra_xusb_remove_ports (struct tegra_xusb_padctl*) ;

__attribute__((used)) static int tegra_xusb_padctl_remove(struct platform_device *pdev)
{
 struct tegra_xusb_padctl *padctl = platform_get_drvdata(pdev);
 int err;

 tegra_xusb_remove_ports(padctl);
 tegra_xusb_remove_pads(padctl);

 err = regulator_bulk_disable(padctl->soc->num_supplies,
         padctl->supplies);
 if (err < 0)
  dev_err(&pdev->dev, "failed to disable supplies: %d\n", err);

 err = reset_control_assert(padctl->rst);
 if (err < 0)
  dev_err(&pdev->dev, "failed to assert reset: %d\n", err);

 padctl->soc->ops->remove(padctl);

 return err;
}
