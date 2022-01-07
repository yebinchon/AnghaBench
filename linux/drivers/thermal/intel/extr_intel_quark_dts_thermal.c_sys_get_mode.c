
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct soc_sensor_entry* devdata; } ;
struct soc_sensor_entry {int mode; } ;
typedef enum thermal_device_mode { ____Placeholder_thermal_device_mode } thermal_device_mode ;



__attribute__((used)) static int sys_get_mode(struct thermal_zone_device *tzd,
    enum thermal_device_mode *mode)
{
 struct soc_sensor_entry *aux_entry = tzd->devdata;
 *mode = aux_entry->mode;
 return 0;
}
