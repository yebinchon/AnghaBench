
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_power {int battery; scalar_t__ have_battery; struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t wm831x_bat_irq(int irq, void *data)
{
 struct wm831x_power *wm831x_power = data;
 struct wm831x *wm831x = wm831x_power->wm831x;

 dev_dbg(wm831x->dev, "Battery status changed: %d\n", irq);



 if (wm831x_power->have_battery)
  power_supply_changed(wm831x_power->battery);

 return IRQ_HANDLED;
}
