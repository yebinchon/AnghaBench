
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9052_battery {int da9052; } ;


 int DA9052_BAT_TSH ;
 int da9052_adc_read_temp (int ) ;

__attribute__((used)) static int da9052_bat_check_presence(struct da9052_battery *bat, int *illegal)
{
 int bat_temp;

 bat_temp = da9052_adc_read_temp(bat->da9052);
 if (bat_temp < 0)
  return bat_temp;

 if (bat_temp > DA9052_BAT_TSH)
  *illegal = 1;
 else
  *illegal = 0;

 return 0;
}
