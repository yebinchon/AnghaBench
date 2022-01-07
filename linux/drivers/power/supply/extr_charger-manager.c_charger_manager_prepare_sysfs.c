
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {char* name; int mode; } ;
struct TYPE_9__ {int store; int show; TYPE_5__ attr; } ;
struct TYPE_8__ {int show; TYPE_5__ attr; } ;
struct TYPE_7__ {int show; TYPE_5__ attr; } ;
struct TYPE_6__ {char* name; TYPE_5__** attrs; } ;
struct charger_regulator {int externally_control; int regulator_name; TYPE_4__ attr_externally_control; TYPE_3__ attr_state; TYPE_2__ attr_name; TYPE_1__ attr_grp; TYPE_5__** attrs; } ;
struct charger_manager {int dev; struct charger_desc* desc; } ;
struct charger_desc {int num_charger_regulators; struct charger_regulator* charger_regulators; TYPE_1__** sysfs_groups; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int charger_externally_control_show ;
 int charger_externally_control_store ;
 int charger_name_show ;
 int charger_state_show ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,int ,int ) ;
 char* devm_kasprintf (int ,int ,char*,int) ;
 int sysfs_attr_init (TYPE_5__*) ;

__attribute__((used)) static int charger_manager_prepare_sysfs(struct charger_manager *cm)
{
 struct charger_desc *desc = cm->desc;
 struct charger_regulator *charger;
 int chargers_externally_control = 1;
 char *name;
 int i;


 for (i = 0; i < desc->num_charger_regulators; i++) {
  charger = &desc->charger_regulators[i];

  name = devm_kasprintf(cm->dev, GFP_KERNEL, "charger.%d", i);
  if (!name)
   return -ENOMEM;

  charger->attrs[0] = &charger->attr_name.attr;
  charger->attrs[1] = &charger->attr_state.attr;
  charger->attrs[2] = &charger->attr_externally_control.attr;
  charger->attrs[3] = ((void*)0);

  charger->attr_grp.name = name;
  charger->attr_grp.attrs = charger->attrs;
  desc->sysfs_groups[i] = &charger->attr_grp;

  sysfs_attr_init(&charger->attr_name.attr);
  charger->attr_name.attr.name = "name";
  charger->attr_name.attr.mode = 0444;
  charger->attr_name.show = charger_name_show;

  sysfs_attr_init(&charger->attr_state.attr);
  charger->attr_state.attr.name = "state";
  charger->attr_state.attr.mode = 0444;
  charger->attr_state.show = charger_state_show;

  sysfs_attr_init(&charger->attr_externally_control.attr);
  charger->attr_externally_control.attr.name
    = "externally_control";
  charger->attr_externally_control.attr.mode = 0644;
  charger->attr_externally_control.show
    = charger_externally_control_show;
  charger->attr_externally_control.store
    = charger_externally_control_store;

  if (!desc->charger_regulators[i].externally_control ||
    !chargers_externally_control)
   chargers_externally_control = 0;

  dev_info(cm->dev, "'%s' regulator's externally_control is %d\n",
    charger->regulator_name, charger->externally_control);
 }

 if (chargers_externally_control) {
  dev_err(cm->dev, "Cannot register regulator because charger-manager must need at least one charger for charging battery\n");
  return -EINVAL;
 }

 return 0;
}
