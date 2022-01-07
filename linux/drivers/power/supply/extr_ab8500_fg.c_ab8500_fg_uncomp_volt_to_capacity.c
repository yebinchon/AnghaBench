
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int vbat; } ;


 int ab8500_fg_bat_voltage (struct ab8500_fg*) ;
 int ab8500_fg_volt_to_capacity (struct ab8500_fg*,int ) ;

__attribute__((used)) static int ab8500_fg_uncomp_volt_to_capacity(struct ab8500_fg *di)
{
 di->vbat = ab8500_fg_bat_voltage(di);
 return ab8500_fg_volt_to_capacity(di, di->vbat);
}
