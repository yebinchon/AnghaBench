
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788_charger_platform_data {scalar_t__ charger_event; } ;
struct lp8788_charger {int charger_work; int battery; int charger; struct lp8788_charger_platform_data* pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;





 int lp8788_find_irq_id (struct lp8788_charger*,int,int*) ;
 int power_supply_changed (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t lp8788_charger_irq_thread(int virq, void *ptr)
{
 struct lp8788_charger *pchg = ptr;
 struct lp8788_charger_platform_data *pdata = pchg->pdata;
 int id = -1;

 if (!lp8788_find_irq_id(pchg, virq, &id))
  return IRQ_NONE;

 switch (id) {
 case 131:
 case 130:
 case 129:
 case 132:
 case 128:
  power_supply_changed(pchg->charger);
  power_supply_changed(pchg->battery);
  break;
 default:
  break;
 }


 if (!pdata)
  goto irq_handled;

 if (pdata->charger_event && id == 131)
  schedule_work(&pchg->charger_work);

irq_handled:
 return IRQ_HANDLED;
}
