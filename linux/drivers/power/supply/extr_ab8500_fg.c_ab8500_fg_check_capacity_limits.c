
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int force_full; scalar_t__ fully_charged; int charging; scalar_t__ low_bat; } ;
struct TYPE_6__ {int enable; int* cap_to_scale; int disable_cap_level; int scaled_cap; } ;
struct TYPE_7__ {scalar_t__ level; scalar_t__ prev_level; int prev_percent; TYPE_2__ cap_scale; int permille; scalar_t__ mah; scalar_t__ prev_mah; } ;
struct ab8500_fg {int fg_kobject; TYPE_4__ flags; int dev; int fg_psy; TYPE_3__ bat_cap; TYPE_1__* bm; } ;
struct TYPE_5__ {scalar_t__ capacity_scaling; } ;


 int DIV_ROUND_CLOSEST (int ,int) ;
 int ab8500_fg_calculate_scaled_capacity (struct ab8500_fg*) ;
 scalar_t__ ab8500_fg_capacity_level (struct ab8500_fg*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_info (int ,char*,int,int ) ;
 int power_supply_changed (int ) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static void ab8500_fg_check_capacity_limits(struct ab8500_fg *di, bool init)
{
 bool changed = 0;
 int percent = DIV_ROUND_CLOSEST(di->bat_cap.permille, 10);

 di->bat_cap.level = ab8500_fg_capacity_level(di);

 if (di->bat_cap.level != di->bat_cap.prev_level) {




  if (!(!di->flags.charging && di->bat_cap.level >
   di->bat_cap.prev_level) || init) {
   dev_dbg(di->dev, "level changed from %d to %d\n",
    di->bat_cap.prev_level,
    di->bat_cap.level);
   di->bat_cap.prev_level = di->bat_cap.level;
   changed = 1;
  } else {
   dev_dbg(di->dev, "level not allowed to go up "
    "since no charger is connected: %d to %d\n",
    di->bat_cap.prev_level,
    di->bat_cap.level);
  }
 }





 if (di->flags.low_bat) {
  dev_dbg(di->dev, "Battery low, set capacity to 0\n");
  di->bat_cap.prev_percent = 0;
  di->bat_cap.permille = 0;
  percent = 0;
  di->bat_cap.prev_mah = 0;
  di->bat_cap.mah = 0;
  changed = 1;
 } else if (di->flags.fully_charged) {




  if (di->flags.force_full) {
   di->bat_cap.prev_percent = percent;
   di->bat_cap.prev_mah = di->bat_cap.mah;

   changed = 1;

   if (!di->bat_cap.cap_scale.enable &&
      di->bm->capacity_scaling) {
    di->bat_cap.cap_scale.enable = 1;
    di->bat_cap.cap_scale.cap_to_scale[0] = 100;
    di->bat_cap.cap_scale.cap_to_scale[1] =
      di->bat_cap.prev_percent;
    di->bat_cap.cap_scale.disable_cap_level = 100;
   }
  } else if (di->bat_cap.prev_percent != percent) {
   dev_dbg(di->dev,
    "battery reported full "
    "but capacity dropping: %d\n",
    percent);
   di->bat_cap.prev_percent = percent;
   di->bat_cap.prev_mah = di->bat_cap.mah;

   changed = 1;
  }
 } else if (di->bat_cap.prev_percent != percent) {
  if (percent == 0) {





   di->bat_cap.prev_percent = 1;
   percent = 1;

   changed = 1;
  } else if (!(!di->flags.charging &&
   percent > di->bat_cap.prev_percent) || init) {




   dev_dbg(di->dev,
    "capacity changed from %d to %d (%d)\n",
    di->bat_cap.prev_percent,
    percent,
    di->bat_cap.permille);
   di->bat_cap.prev_percent = percent;
   di->bat_cap.prev_mah = di->bat_cap.mah;

   changed = 1;
  } else {
   dev_dbg(di->dev, "capacity not allowed to go up since "
    "no charger is connected: %d to %d (%d)\n",
    di->bat_cap.prev_percent,
    percent,
    di->bat_cap.permille);
  }
 }

 if (changed) {
  if (di->bm->capacity_scaling) {
   di->bat_cap.cap_scale.scaled_cap =
    ab8500_fg_calculate_scaled_capacity(di);

   dev_info(di->dev, "capacity=%d (%d)\n",
    di->bat_cap.prev_percent,
    di->bat_cap.cap_scale.scaled_cap);
  }
  power_supply_changed(di->fg_psy);
  if (di->flags.fully_charged && di->flags.force_full) {
   dev_dbg(di->dev, "Battery full, notifying.\n");
   di->flags.force_full = 0;
   sysfs_notify(&di->fg_kobject, ((void*)0), "charge_full");
  }
  sysfs_notify(&di->fg_kobject, ((void*)0), "charge_now");
 }
}
