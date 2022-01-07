
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cdns_rtc {int ref_clk; int pclk; } ;


 int cdns_rtc_alarm_irq_enable (int *,int ) ;
 int clk_disable_unprepare (int ) ;
 int device_init_wakeup (int *,int ) ;
 struct cdns_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cdns_rtc_remove(struct platform_device *pdev)
{
 struct cdns_rtc *crtc = platform_get_drvdata(pdev);

 cdns_rtc_alarm_irq_enable(&pdev->dev, 0);
 device_init_wakeup(&pdev->dev, 0);

 clk_disable_unprepare(crtc->pclk);
 clk_disable_unprepare(crtc->ref_clk);

 return 0;
}
