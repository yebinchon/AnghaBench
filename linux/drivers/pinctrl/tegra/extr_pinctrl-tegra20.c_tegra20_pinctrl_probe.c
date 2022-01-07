
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int tegra20_pinctrl ;
 int tegra20_pinctrl_register_clock_muxes (struct platform_device*) ;
 int tegra_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int tegra20_pinctrl_probe(struct platform_device *pdev)
{
 int err;

 err = tegra_pinctrl_probe(pdev, &tegra20_pinctrl);
 if (err)
  return err;

 tegra20_pinctrl_register_clock_muxes(pdev);

 return 0;
}
