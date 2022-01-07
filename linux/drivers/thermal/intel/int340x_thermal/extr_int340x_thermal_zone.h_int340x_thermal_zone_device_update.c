
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct int34x_thermal_zone {int zone; } ;
typedef enum thermal_notify_event { ____Placeholder_thermal_notify_event } thermal_notify_event ;


 int thermal_zone_device_update (int ,int) ;

__attribute__((used)) static inline void int340x_thermal_zone_device_update(
     struct int34x_thermal_zone *tzone,
     enum thermal_notify_event event)
{
 thermal_zone_device_update(tzone->zone, event);
}
