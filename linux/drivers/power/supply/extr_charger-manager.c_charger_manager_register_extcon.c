
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charger_regulator {int num_cables; int regulator_name; struct charger_cable* cables; struct charger_manager* cm; int consumer; } ;
struct charger_manager {int dev; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; struct charger_regulator* charger_regulators; } ;
struct charger_cable {struct charger_manager* cm; struct charger_regulator* charger; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int charger_extcon_init (struct charger_manager*,struct charger_cable*) ;
 int dev_err (int ,char*,int ) ;
 int regulator_get (int ,int ) ;

__attribute__((used)) static int charger_manager_register_extcon(struct charger_manager *cm)
{
 struct charger_desc *desc = cm->desc;
 struct charger_regulator *charger;
 int ret;
 int i;
 int j;

 for (i = 0; i < desc->num_charger_regulators; i++) {
  charger = &desc->charger_regulators[i];

  charger->consumer = regulator_get(cm->dev,
     charger->regulator_name);
  if (IS_ERR(charger->consumer)) {
   dev_err(cm->dev, "Cannot find charger(%s)\n",
    charger->regulator_name);
   return PTR_ERR(charger->consumer);
  }
  charger->cm = cm;

  for (j = 0; j < charger->num_cables; j++) {
   struct charger_cable *cable = &charger->cables[j];

   ret = charger_extcon_init(cm, cable);
   if (ret < 0) {
    dev_err(cm->dev, "Cannot initialize charger(%s)\n",
     charger->regulator_name);
    return ret;
   }
   cable->charger = charger;
   cable->cm = cm;
  }
 }

 return 0;
}
