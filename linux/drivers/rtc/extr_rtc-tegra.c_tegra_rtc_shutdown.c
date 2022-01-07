
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_vdbg (int *,char*) ;
 int tegra_rtc_alarm_irq_enable (int *,int ) ;

__attribute__((used)) static void tegra_rtc_shutdown(struct platform_device *pdev)
{
 dev_vdbg(&pdev->dev, "disabling interrupts\n");
 tegra_rtc_alarm_irq_enable(&pdev->dev, 0);
}
