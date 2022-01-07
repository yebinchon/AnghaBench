
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_soctherm {int debugfs_dir; } ;
struct platform_device {int dummy; } ;


 int debugfs_remove_recursive (int ) ;
 struct tegra_soctherm* platform_get_drvdata (struct platform_device*) ;
 int soctherm_clk_enable (struct platform_device*,int) ;

__attribute__((used)) static int tegra_soctherm_remove(struct platform_device *pdev)
{
 struct tegra_soctherm *tegra = platform_get_drvdata(pdev);

 debugfs_remove_recursive(tegra->debugfs_dir);

 soctherm_clk_enable(pdev, 0);

 return 0;
}
