
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDRTAS_THERMAL_SENSOR ;
 int pr_warn (char*,int) ;
 int rtas_get_sensor (int ,int ,int*) ;

__attribute__((used)) static int wdrtas_get_temperature(void)
{
 int result;
 int temperature = 0;

 result = rtas_get_sensor(WDRTAS_THERMAL_SENSOR, 0, &temperature);

 if (result < 0)
  pr_warn("reading the thermal sensor failed: %i\n", result);
 else
  temperature = ((temperature * 9) / 5) + 32;

 return temperature;
}
