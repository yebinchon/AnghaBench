
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_power {int usb; int wall; int battery; scalar_t__ have_battery; int usb_notify; scalar_t__ usb_phy; struct wm831x* wm831x; } ;
struct wm831x {int dummy; } ;
struct platform_device {int dummy; } ;


 int ARRAY_SIZE (char**) ;
 int free_irq (int,struct wm831x_power*) ;
 struct wm831x_power* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int power_supply_unregister (int ) ;
 int usb_unregister_notifier (scalar_t__,int *) ;
 char** wm831x_bat_irqs ;
 int wm831x_irq (struct wm831x*,int ) ;

__attribute__((used)) static int wm831x_power_remove(struct platform_device *pdev)
{
 struct wm831x_power *wm831x_power = platform_get_drvdata(pdev);
 struct wm831x *wm831x = wm831x_power->wm831x;
 int irq, i;

 if (wm831x_power->usb_phy) {
  usb_unregister_notifier(wm831x_power->usb_phy,
     &wm831x_power->usb_notify);
 }

 for (i = 0; i < ARRAY_SIZE(wm831x_bat_irqs); i++) {
  irq = wm831x_irq(wm831x,
     platform_get_irq_byname(pdev,
        wm831x_bat_irqs[i]));
  free_irq(irq, wm831x_power);
 }

 irq = wm831x_irq(wm831x, platform_get_irq_byname(pdev, "PWR SRC"));
 free_irq(irq, wm831x_power);

 irq = wm831x_irq(wm831x, platform_get_irq_byname(pdev, "SYSLO"));
 free_irq(irq, wm831x_power);

 if (wm831x_power->have_battery)
  power_supply_unregister(wm831x_power->battery);
 power_supply_unregister(wm831x_power->wall);
 power_supply_unregister(wm831x_power->usb);
 return 0;
}
