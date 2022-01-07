
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int btemp_lowmed; int btemp_medhigh; int btemp_high; int btemp_low; } ;
struct ab8500_btemp {int btemp_psy; TYPE_1__ events; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*) ;
 int power_supply_changed (int ) ;

__attribute__((used)) static irqreturn_t ab8500_btemp_lowmed_handler(int irq, void *_di)
{
 struct ab8500_btemp *di = _di;

 dev_dbg(di->dev, "Battery temperature is between low and medium\n");

 di->events.btemp_lowmed = 1;
 di->events.btemp_medhigh = 0;
 di->events.btemp_high = 0;
 di->events.btemp_low = 0;
 power_supply_changed(di->btemp_psy);

 return IRQ_HANDLED;
}
