
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_plat_data {int clk_ipg; int clk_ref; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rtc_plat_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxc_rtc_remove(struct platform_device *pdev)
{
 struct rtc_plat_data *pdata = platform_get_drvdata(pdev);

 clk_disable_unprepare(pdata->clk_ref);
 clk_disable_unprepare(pdata->clk_ipg);

 return 0;
}
