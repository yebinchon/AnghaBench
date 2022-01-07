
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charger_manager {int charger_enabled; int dev; void* charging_end_time; void* charging_start_time; scalar_t__ emergency_stop; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; TYPE_1__* charger_regulators; } ;
struct TYPE_2__ {int regulator_name; int consumer; scalar_t__ externally_control; } ;


 int EAGAIN ;
 int dev_warn (int ,char*,int ) ;
 int ktime_get () ;
 void* ktime_to_ms (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_force_disable (int ) ;
 scalar_t__ regulator_is_enabled (int ) ;

__attribute__((used)) static int try_charger_enable(struct charger_manager *cm, bool enable)
{
 int err = 0, i;
 struct charger_desc *desc = cm->desc;


 if (enable == cm->charger_enabled)
  return 0;

 if (enable) {
  if (cm->emergency_stop)
   return -EAGAIN;





  cm->charging_start_time = ktime_to_ms(ktime_get());
  cm->charging_end_time = 0;

  for (i = 0 ; i < desc->num_charger_regulators ; i++) {
   if (desc->charger_regulators[i].externally_control)
    continue;

   err = regulator_enable(desc->charger_regulators[i].consumer);
   if (err < 0) {
    dev_warn(cm->dev, "Cannot enable %s regulator\n",
      desc->charger_regulators[i].regulator_name);
   }
  }
 } else {




  cm->charging_start_time = 0;
  cm->charging_end_time = ktime_to_ms(ktime_get());

  for (i = 0 ; i < desc->num_charger_regulators ; i++) {
   if (desc->charger_regulators[i].externally_control)
    continue;

   err = regulator_disable(desc->charger_regulators[i].consumer);
   if (err < 0) {
    dev_warn(cm->dev, "Cannot disable %s regulator\n",
      desc->charger_regulators[i].regulator_name);
   }
  }





  for (i = 0; i < desc->num_charger_regulators; i++) {
   if (regulator_is_enabled(
        desc->charger_regulators[i].consumer)) {
    regulator_force_disable(
     desc->charger_regulators[i].consumer);
    dev_warn(cm->dev, "Disable regulator(%s) forcibly\n",
      desc->charger_regulators[i].regulator_name);
   }
  }
 }

 if (!err)
  cm->charger_enabled = enable;

 return err;
}
