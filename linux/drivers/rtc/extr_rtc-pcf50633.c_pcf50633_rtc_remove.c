
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcf50633_rtc {int pcf; } ;


 int PCF50633_IRQ_ALARM ;
 int pcf50633_free_irq (int ,int ) ;
 struct pcf50633_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcf50633_rtc_remove(struct platform_device *pdev)
{
 struct pcf50633_rtc *rtc;

 rtc = platform_get_drvdata(pdev);
 pcf50633_free_irq(rtc->pcf, PCF50633_IRQ_ALARM);

 return 0;
}
