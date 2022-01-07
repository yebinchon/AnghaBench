
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int dev_pm_clear_wake_irq (struct device*) ;
 int device_init_wakeup (struct device*,int) ;

__attribute__((used)) static int mrfld_pwrbtn_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 dev_pm_clear_wake_irq(dev);
 device_init_wakeup(dev, 0);
 return 0;
}
