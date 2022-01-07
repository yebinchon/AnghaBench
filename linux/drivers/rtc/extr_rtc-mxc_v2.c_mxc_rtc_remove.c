
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxc_rtc_data {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct mxc_rtc_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxc_rtc_remove(struct platform_device *pdev)
{
 struct mxc_rtc_data *pdata = platform_get_drvdata(pdev);

 clk_disable_unprepare(pdata->clk);
 return 0;
}
