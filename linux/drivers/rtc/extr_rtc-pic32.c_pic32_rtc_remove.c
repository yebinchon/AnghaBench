
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pic32_rtc_dev {int * clk; } ;


 int clk_unprepare (int *) ;
 int pic32_rtc_setaie (int *,int ) ;
 struct pic32_rtc_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pic32_rtc_remove(struct platform_device *pdev)
{
 struct pic32_rtc_dev *pdata = platform_get_drvdata(pdev);

 pic32_rtc_setaie(&pdev->dev, 0);
 clk_unprepare(pdata->clk);
 pdata->clk = ((void*)0);

 return 0;
}
