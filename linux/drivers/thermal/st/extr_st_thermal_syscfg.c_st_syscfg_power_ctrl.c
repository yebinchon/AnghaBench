
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_thermal_sensor {int pwr; } ;
typedef enum st_thermal_power_state { ____Placeholder_st_thermal_power_state } st_thermal_power_state ;


 int regmap_field_write (int ,int) ;

__attribute__((used)) static int st_syscfg_power_ctrl(struct st_thermal_sensor *sensor,
    enum st_thermal_power_state power_state)
{
 return regmap_field_write(sensor->pwr, power_state);
}
