
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int batt_rem; } ;
struct ab8500_btemp {int btemp_psy; TYPE_1__ events; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_err (int ,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t ab8500_btemp_batctrlindb_handler(int irq, void *_di)
{
 struct ab8500_btemp *di = _di;
 dev_err(di->dev, "Battery removal detected!\n");

 di->events.batt_rem = 1;
 power_supply_changed(di->btemp_psy);

 return IRQ_HANDLED;
}
