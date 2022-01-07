
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int btemp_low; int btemp_high; int btemp_medhigh; int btemp_lowmed; } ;
struct ab8500_btemp {int btemp_psy; TYPE_1__ events; int dev; int parent; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_crit (int ,char*) ;
 int dev_dbg (int ,char*) ;
 scalar_t__ is_ab8500_3p3_or_earlier (int ) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t ab8500_btemp_templow_handler(int irq, void *_di)
{
 struct ab8500_btemp *di = _di;

 if (is_ab8500_3p3_or_earlier(di->parent)) {
  dev_dbg(di->dev, "Ignore false btemp low irq"
   " for ABB cut 1.0, 1.1, 2.0 and 3.3\n");
 } else {
  dev_crit(di->dev, "Battery temperature lower than -10deg c\n");

  di->events.btemp_low = 1;
  di->events.btemp_high = 0;
  di->events.btemp_medhigh = 0;
  di->events.btemp_lowmed = 0;
  power_supply_changed(di->btemp_psy);
 }

 return IRQ_HANDLED;
}
