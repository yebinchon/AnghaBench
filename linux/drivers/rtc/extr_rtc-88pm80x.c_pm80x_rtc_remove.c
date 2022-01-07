
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_rtc_info {int irq; int chip; } ;
struct platform_device {int dummy; } ;


 struct pm80x_rtc_info* platform_get_drvdata (struct platform_device*) ;
 int pm80x_free_irq (int ,int ,struct pm80x_rtc_info*) ;

__attribute__((used)) static int pm80x_rtc_remove(struct platform_device *pdev)
{
 struct pm80x_rtc_info *info = platform_get_drvdata(pdev);
 pm80x_free_irq(info->chip, info->irq, info);
 return 0;
}
