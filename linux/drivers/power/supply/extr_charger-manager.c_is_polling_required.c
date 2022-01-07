
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charger_manager {TYPE_1__* desc; int dev; } ;
struct TYPE_2__ {int polling_mode; } ;






 int dev_warn (int ,char*,int) ;
 int is_charging (struct charger_manager*) ;
 int is_ext_pwr_online (struct charger_manager*) ;

__attribute__((used)) static bool is_polling_required(struct charger_manager *cm)
{
 switch (cm->desc->polling_mode) {
 case 129:
  return 0;
 case 131:
  return 1;
 case 128:
  return is_ext_pwr_online(cm);
 case 130:
  return is_charging(cm);
 default:
  dev_warn(cm->dev, "Incorrect polling_mode (%d)\n",
    cm->desc->polling_mode);
 }

 return 0;
}
