
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db8500_thermal_zone {int interpolated_temp; } ;



__attribute__((used)) static int db8500_thermal_get_temp(void *data, int *temp)
{
 struct db8500_thermal_zone *th = data;






 *temp = th->interpolated_temp;

 return 0;
}
