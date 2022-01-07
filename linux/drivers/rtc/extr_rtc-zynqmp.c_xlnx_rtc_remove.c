
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int device_init_wakeup (int *,int ) ;
 int xlnx_rtc_alarm_irq_enable (int *,int ) ;

__attribute__((used)) static int xlnx_rtc_remove(struct platform_device *pdev)
{
 xlnx_rtc_alarm_irq_enable(&pdev->dev, 0);
 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
