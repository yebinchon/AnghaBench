
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpc32xx_rtc {scalar_t__ irq; } ;


 int device_init_wakeup (int *,int ) ;
 struct lpc32xx_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lpc32xx_rtc_remove(struct platform_device *pdev)
{
 struct lpc32xx_rtc *rtc = platform_get_drvdata(pdev);

 if (rtc->irq >= 0)
  device_init_wakeup(&pdev->dev, 0);

 return 0;
}
