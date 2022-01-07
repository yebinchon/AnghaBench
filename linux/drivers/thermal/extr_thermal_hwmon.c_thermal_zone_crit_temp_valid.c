
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_crit_temp ) (struct thermal_zone_device*,int*) ;} ;


 int stub1 (struct thermal_zone_device*,int*) ;

__attribute__((used)) static bool thermal_zone_crit_temp_valid(struct thermal_zone_device *tz)
{
 int temp;
 return tz->ops->get_crit_temp && !tz->ops->get_crit_temp(tz, &temp);
}
