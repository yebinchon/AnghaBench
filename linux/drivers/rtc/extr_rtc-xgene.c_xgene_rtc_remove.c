
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_rtc_dev {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 struct xgene_rtc_dev* platform_get_drvdata (struct platform_device*) ;
 int xgene_rtc_alarm_irq_enable (int *,int ) ;

__attribute__((used)) static int xgene_rtc_remove(struct platform_device *pdev)
{
 struct xgene_rtc_dev *pdata = platform_get_drvdata(pdev);

 xgene_rtc_alarm_irq_enable(&pdev->dev, 0);
 device_init_wakeup(&pdev->dev, 0);
 clk_disable_unprepare(pdata->clk);
 return 0;
}
