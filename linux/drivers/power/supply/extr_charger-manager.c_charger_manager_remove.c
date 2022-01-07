
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct charger_regulator {int num_cables; int consumer; struct charger_cable* cables; } ;
struct charger_manager {int charger_psy; int entry; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; struct charger_regulator* charger_regulators; } ;
struct charger_cable {int extcon_dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cm_list_mtx ;
 int cm_monitor_work ;
 int extcon_unregister_interest (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct charger_manager* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;
 int regulator_put (int ) ;
 int setup_polling ;
 int try_charger_enable (struct charger_manager*,int) ;

__attribute__((used)) static int charger_manager_remove(struct platform_device *pdev)
{
 struct charger_manager *cm = platform_get_drvdata(pdev);
 struct charger_desc *desc = cm->desc;
 int i = 0;
 int j = 0;


 mutex_lock(&cm_list_mtx);
 list_del(&cm->entry);
 mutex_unlock(&cm_list_mtx);

 cancel_work_sync(&setup_polling);
 cancel_delayed_work_sync(&cm_monitor_work);

 for (i = 0 ; i < desc->num_charger_regulators ; i++) {
  struct charger_regulator *charger
    = &desc->charger_regulators[i];
  for (j = 0 ; j < charger->num_cables ; j++) {
   struct charger_cable *cable = &charger->cables[j];
   extcon_unregister_interest(&cable->extcon_dev);
  }
 }

 for (i = 0 ; i < desc->num_charger_regulators ; i++)
  regulator_put(desc->charger_regulators[i].consumer);

 power_supply_unregister(cm->charger_psy);

 try_charger_enable(cm, 0);

 return 0;
}
