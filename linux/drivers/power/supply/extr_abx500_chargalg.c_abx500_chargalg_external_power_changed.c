
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dummy; } ;
struct abx500_chargalg {int chargalg_work; int chargalg_wq; } ;


 struct abx500_chargalg* power_supply_get_drvdata (struct power_supply*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void abx500_chargalg_external_power_changed(struct power_supply *psy)
{
 struct abx500_chargalg *di = power_supply_get_drvdata(psy);





 queue_work(di->chargalg_wq, &di->chargalg_work);
}
