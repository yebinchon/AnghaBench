
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibm_thermal_sensors_struct {int * temp; } ;


 int EINVAL ;
 scalar_t__ TPACPI_THERMAL_TPEC_16 ;
 int thermal_get_sensor (int,int *) ;
 scalar_t__ thermal_read_mode ;

__attribute__((used)) static int thermal_get_sensors(struct ibm_thermal_sensors_struct *s)
{
 int res, i;
 int n;

 n = 8;
 i = 0;

 if (!s)
  return -EINVAL;

 if (thermal_read_mode == TPACPI_THERMAL_TPEC_16)
  n = 16;

 for (i = 0 ; i < n; i++) {
  res = thermal_get_sensor(i, &s->temp[i]);
  if (res)
   return res;
 }

 return n;
}
