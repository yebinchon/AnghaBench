
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350_power {int usb; int ac; int battery; } ;
struct wm8350 {struct wm8350_power power; } ;
struct platform_device {int dev; } ;


 int dev_attr_charger_state ;
 int device_remove_file (int *,int *) ;
 int free_charger_irq (struct wm8350*) ;
 struct wm8350* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int wm8350_power_remove(struct platform_device *pdev)
{
 struct wm8350 *wm8350 = platform_get_drvdata(pdev);
 struct wm8350_power *power = &wm8350->power;

 free_charger_irq(wm8350);
 device_remove_file(&pdev->dev, &dev_attr_charger_state);
 power_supply_unregister(power->battery);
 power_supply_unregister(power->ac);
 power_supply_unregister(power->usb);
 return 0;
}
