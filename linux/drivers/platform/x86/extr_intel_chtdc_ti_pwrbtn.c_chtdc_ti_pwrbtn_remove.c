
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;

__attribute__((used)) static int chtdc_ti_pwrbtn_remove(struct platform_device *pdev)
{
 dev_pm_clear_wake_irq(&pdev->dev);
 device_init_wakeup(&pdev->dev, 0);
 return 0;
}
