
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc5t583_rtc {TYPE_1__* rtc; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct rc5t583_rtc* platform_get_drvdata (struct platform_device*) ;
 int rc5t583_rtc_alarm_irq_enable (int *,int ) ;

__attribute__((used)) static int rc5t583_rtc_remove(struct platform_device *pdev)
{
 struct rc5t583_rtc *rc5t583_rtc = platform_get_drvdata(pdev);

 rc5t583_rtc_alarm_irq_enable(&rc5t583_rtc->rtc->dev, 0);
 return 0;
}
