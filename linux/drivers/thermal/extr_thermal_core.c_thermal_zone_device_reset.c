
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {scalar_t__ passive; } ;


 int thermal_zone_device_init (struct thermal_zone_device*) ;

__attribute__((used)) static void thermal_zone_device_reset(struct thermal_zone_device *tz)
{
 tz->passive = 0;
 thermal_zone_device_init(tz);
}
