
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_rtc_info {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra_rtc_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int tegra_rtc_remove(struct platform_device *pdev)
{
 struct tegra_rtc_info *info = platform_get_drvdata(pdev);

 clk_disable_unprepare(info->clk);

 return 0;
}
