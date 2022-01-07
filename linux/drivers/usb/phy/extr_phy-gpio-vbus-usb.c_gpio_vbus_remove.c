
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_vbus_data {int phy; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int device_init_wakeup (int *,int ) ;
 struct gpio_vbus_data* platform_get_drvdata (struct platform_device*) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int gpio_vbus_remove(struct platform_device *pdev)
{
 struct gpio_vbus_data *gpio_vbus = platform_get_drvdata(pdev);

 device_init_wakeup(&pdev->dev, 0);
 cancel_delayed_work_sync(&gpio_vbus->work);

 usb_remove_phy(&gpio_vbus->phy);

 return 0;
}
