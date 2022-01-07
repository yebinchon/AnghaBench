
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ charging; scalar_t__ calibrate; } ;
struct TYPE_3__ {int prev_level; int prev_percent; int prev_mah; int level; int permille; int mah; int max_mah; int max_mah_design; } ;
struct ab8500_fg {int recovery_needed; int high_curr_mode; int discharge_state; int charge_state; TYPE_2__ flags; int accu_charge; int avg_curr; int inst_curr; int vbat; TYPE_1__ bat_cap; int dev; } ;


 int ab8500_fg_algorithm_calibrate (struct ab8500_fg*) ;
 int ab8500_fg_algorithm_charging (struct ab8500_fg*) ;
 int ab8500_fg_algorithm_discharging (struct ab8500_fg*) ;
 int dev_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static void ab8500_fg_algorithm(struct ab8500_fg *di)
{
 if (di->flags.calibrate)
  ab8500_fg_algorithm_calibrate(di);
 else {
  if (di->flags.charging)
   ab8500_fg_algorithm_charging(di);
  else
   ab8500_fg_algorithm_discharging(di);
 }

 dev_dbg(di->dev, "[FG_DATA] %d %d %d %d %d %d %d %d %d %d "
  "%d %d %d %d %d %d %d\n",
  di->bat_cap.max_mah_design,
  di->bat_cap.max_mah,
  di->bat_cap.mah,
  di->bat_cap.permille,
  di->bat_cap.level,
  di->bat_cap.prev_mah,
  di->bat_cap.prev_percent,
  di->bat_cap.prev_level,
  di->vbat,
  di->inst_curr,
  di->avg_curr,
  di->accu_charge,
  di->flags.charging,
  di->charge_state,
  di->discharge_state,
  di->high_curr_mode,
  di->recovery_needed);
}
