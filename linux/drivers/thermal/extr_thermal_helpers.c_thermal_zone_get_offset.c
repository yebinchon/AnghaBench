
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* tzp; } ;
struct TYPE_2__ {int offset; } ;



int thermal_zone_get_offset(struct thermal_zone_device *tz)
{
 if (tz && tz->tzp)
  return tz->tzp->offset;
 return 0;
}
