
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int tegra210_pinctrl ;
 int tegra_pinctrl_probe (struct platform_device*,int *) ;

__attribute__((used)) static int tegra210_pinctrl_probe(struct platform_device *pdev)
{
 return tegra_pinctrl_probe(pdev, &tegra210_pinctrl);
}
