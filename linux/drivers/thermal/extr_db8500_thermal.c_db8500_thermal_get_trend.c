
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db8500_thermal_zone {int trend; } ;
typedef enum thermal_trend { ____Placeholder_thermal_trend } thermal_trend ;



__attribute__((used)) static int db8500_thermal_get_trend(void *data, int trip, enum thermal_trend *trend)
{
 struct db8500_thermal_zone *th = data;

 *trend = th->trend;

 return 0;
}
