
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current_iset; } ;
struct abx500_chargalg {int dev; TYPE_3__* bm; TYPE_1__ ccm; } ;
typedef enum maxim_ret { ____Placeholder_maxim_ret } maxim_ret ;
struct TYPE_6__ {size_t batt_id; TYPE_2__* bat_type; } ;
struct TYPE_5__ {int normal_cur_lvl; } ;





 int abx500_chargalg_chg_curr_maxim (struct abx500_chargalg*) ;
 int abx500_chargalg_update_chg_curr (struct abx500_chargalg*,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void handle_maxim_chg_curr(struct abx500_chargalg *di)
{
 enum maxim_ret ret;
 int result;

 ret = abx500_chargalg_chg_curr_maxim(di);
 switch (ret) {
 case 130:
  result = abx500_chargalg_update_chg_curr(di,
   di->ccm.current_iset);
  if (result)
   dev_err(di->dev, "failed to set chg curr\n");
  break;
 case 129:
  result = abx500_chargalg_update_chg_curr(di,
   di->bm->bat_type[di->bm->batt_id].normal_cur_lvl);
  if (result)
   dev_err(di->dev, "failed to set chg curr\n");
  break;

 case 128:
 default:

  break;
 }
}
