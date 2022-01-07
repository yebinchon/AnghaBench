
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_mah; int max_mah_design; int mah; int permille; } ;
struct ab8500_fg {TYPE_1__ bat_cap; int dev; } ;


 int ab8500_fg_check_capacity_limits (struct ab8500_fg*,int) ;
 int ab8500_fg_clear_cap_samples (struct ab8500_fg*) ;
 int ab8500_fg_convert_mah_to_permille (struct ab8500_fg*,int) ;
 int ab8500_fg_fill_cap_sample (struct ab8500_fg*,int) ;
 int dev_dbg (int ,char*,int,int) ;

__attribute__((used)) static void force_capacity(struct ab8500_fg *di)
{
 int cap;

 ab8500_fg_clear_cap_samples(di);
 cap = di->bat_cap.user_mah;
 if (cap > di->bat_cap.max_mah_design) {
  dev_dbg(di->dev, "Remaining cap %d can't be bigger than total"
   " %d\n", cap, di->bat_cap.max_mah_design);
  cap = di->bat_cap.max_mah_design;
 }
 ab8500_fg_fill_cap_sample(di, di->bat_cap.user_mah);
 di->bat_cap.permille = ab8500_fg_convert_mah_to_permille(di, cap);
 di->bat_cap.mah = cap;
 ab8500_fg_check_capacity_limits(di, 1);
}
