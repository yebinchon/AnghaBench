
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mah; int permille; } ;
struct ab8500_fg {TYPE_1__ bat_cap; } ;


 int ab8500_fg_add_cap_sample (struct ab8500_fg*,int) ;
 int ab8500_fg_convert_mah_to_permille (struct ab8500_fg*,int) ;
 int ab8500_fg_convert_permille_to_mah (struct ab8500_fg*,int) ;
 int ab8500_fg_load_comp_volt_to_capacity (struct ab8500_fg*) ;
 int ab8500_fg_uncomp_volt_to_capacity (struct ab8500_fg*) ;

__attribute__((used)) static int ab8500_fg_calc_cap_discharge_voltage(struct ab8500_fg *di, bool comp)
{
 int permille, mah;

 if (comp)
  permille = ab8500_fg_load_comp_volt_to_capacity(di);
 else
  permille = ab8500_fg_uncomp_volt_to_capacity(di);

 mah = ab8500_fg_convert_permille_to_mah(di, permille);

 di->bat_cap.mah = ab8500_fg_add_cap_sample(di, mah);
 di->bat_cap.permille =
  ab8500_fg_convert_mah_to_permille(di, di->bat_cap.mah);

 return di->bat_cap.mah;
}
