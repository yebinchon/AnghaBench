
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8727_psy {int batt; int usb; int ac; } ;
struct lp8727_chg {struct lp8727_psy* psy; } ;


 int power_supply_unregister (int ) ;

__attribute__((used)) static void lp8727_unregister_psy(struct lp8727_chg *pchg)
{
 struct lp8727_psy *psy = pchg->psy;

 if (!psy)
  return;

 power_supply_unregister(psy->ac);
 power_supply_unregister(psy->usb);
 power_supply_unregister(psy->batt);
}
