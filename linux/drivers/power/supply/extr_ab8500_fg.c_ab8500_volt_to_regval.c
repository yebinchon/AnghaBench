
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int ARRAY_SIZE (int*) ;
 int* ab8500_fg_lowbat_voltage_map ;

__attribute__((used)) static u8 ab8500_volt_to_regval(int voltage)
{
 int i;

 if (voltage < ab8500_fg_lowbat_voltage_map[0])
  return 0;

 for (i = 0; i < ARRAY_SIZE(ab8500_fg_lowbat_voltage_map); i++) {
  if (voltage < ab8500_fg_lowbat_voltage_map[i])
   return (u8) i - 1;
 }


 return (u8) ARRAY_SIZE(ab8500_fg_lowbat_voltage_map) - 1;
}
