
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mt6397_rtc {int irq; } ;


 int free_irq (int ,struct mt6397_rtc*) ;
 struct mt6397_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_rtc_remove(struct platform_device *pdev)
{
 struct mt6397_rtc *rtc = platform_get_drvdata(pdev);

 free_irq(rtc->irq, rtc);

 return 0;
}
