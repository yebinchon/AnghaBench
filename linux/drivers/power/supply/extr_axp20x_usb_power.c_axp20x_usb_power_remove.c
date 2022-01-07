
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct axp20x_usb_power {int vbus_detect; } ;


 int cancel_delayed_work_sync (int *) ;
 struct axp20x_usb_power* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int axp20x_usb_power_remove(struct platform_device *pdev)
{
 struct axp20x_usb_power *power = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&power->vbus_detect);

 return 0;
}
