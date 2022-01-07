
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsensor_group_thermtrips {int id; int temp; } ;
struct tegra_soctherm {TYPE_1__* soc; } ;
struct TYPE_2__ {int num_ttgs; struct tsensor_group_thermtrips* thermtrips; } ;


 int TEGRA124_SOCTHERM_SENSOR_NUM ;
 int min_low_temp ;

__attribute__((used)) static int tsensor_group_thermtrip_get(struct tegra_soctherm *ts, int id)
{
 int i, temp = min_low_temp;
 struct tsensor_group_thermtrips *tt = ts->soc->thermtrips;

 if (id >= TEGRA124_SOCTHERM_SENSOR_NUM)
  return temp;

 if (tt) {
  for (i = 0; i < ts->soc->num_ttgs; i++) {
   if (tt[i].id == id)
    return tt[i].temp;
  }
 }

 return temp;
}
