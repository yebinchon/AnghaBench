
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct bq24735 {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int bq24735_update (struct bq24735*) ;
 struct bq24735* to_bq24735 (struct power_supply*) ;

__attribute__((used)) static irqreturn_t bq24735_charger_isr(int irq, void *devid)
{
 struct power_supply *psy = devid;
 struct bq24735 *charger = to_bq24735(psy);

 bq24735_update(charger);

 return IRQ_HANDLED;
}
