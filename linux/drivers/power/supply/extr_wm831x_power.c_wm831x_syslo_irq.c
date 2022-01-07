
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_power {struct wm831x* wm831x; } ;
struct wm831x {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_crit (int ,char*) ;

__attribute__((used)) static irqreturn_t wm831x_syslo_irq(int irq, void *data)
{
 struct wm831x_power *wm831x_power = data;
 struct wm831x *wm831x = wm831x_power->wm831x;



 dev_crit(wm831x->dev, "SYSVDD under voltage\n");

 return IRQ_HANDLED;
}
