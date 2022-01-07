
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charger_manager {int dummy; } ;
struct TYPE_2__ {int notifier_call; } ;
struct charger_cable {int name; int extcon_name; TYPE_1__ nb; int extcon_dev; int wq; } ;


 int INIT_WORK (int *,int ) ;
 int charger_extcon_notifier ;
 int charger_extcon_work ;
 int extcon_register_interest (int *,int ,int ,TYPE_1__*) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static int charger_extcon_init(struct charger_manager *cm,
  struct charger_cable *cable)
{
 int ret;






 INIT_WORK(&cable->wq, charger_extcon_work);
 cable->nb.notifier_call = charger_extcon_notifier;
 ret = extcon_register_interest(&cable->extcon_dev,
   cable->extcon_name, cable->name, &cable->nb);
 if (ret < 0) {
  pr_info("Cannot register extcon_dev for %s(cable: %s)\n",
   cable->extcon_name, cable->name);
 }

 return ret;
}
