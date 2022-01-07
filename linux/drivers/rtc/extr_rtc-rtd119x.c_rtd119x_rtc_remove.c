
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd119x_rtc {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct rtd119x_rtc* platform_get_drvdata (struct platform_device*) ;
 int rtd119x_rtc_set_enabled (int *,int) ;

__attribute__((used)) static int rtd119x_rtc_remove(struct platform_device *pdev)
{
 struct rtd119x_rtc *data = platform_get_drvdata(pdev);

 rtd119x_rtc_set_enabled(&pdev->dev, 0);

 clk_disable_unprepare(data->clk);
 clk_put(data->clk);

 return 0;
}
