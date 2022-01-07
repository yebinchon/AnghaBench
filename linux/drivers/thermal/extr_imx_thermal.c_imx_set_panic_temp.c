
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_soc_data {int panic_alarm_mask; int panic_alarm_shift; scalar_t__ panic_alarm_ctrl; } ;
struct regmap {int dummy; } ;
struct imx_thermal_data {int c2; int c1; struct regmap* tempmon; struct thermal_soc_data* socdata; } ;


 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 int regmap_write (struct regmap*,scalar_t__,int) ;

__attribute__((used)) static void imx_set_panic_temp(struct imx_thermal_data *data,
          int panic_temp)
{
 const struct thermal_soc_data *soc_data = data->socdata;
 struct regmap *map = data->tempmon;
 int critical_value;

 critical_value = (data->c2 - panic_temp) / data->c1;

 regmap_write(map, soc_data->panic_alarm_ctrl + REG_CLR,
       soc_data->panic_alarm_mask);
 regmap_write(map, soc_data->panic_alarm_ctrl + REG_SET,
       critical_value << soc_data->panic_alarm_shift);
}
