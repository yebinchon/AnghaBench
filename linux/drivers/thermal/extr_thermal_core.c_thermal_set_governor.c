
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct thermal_governor* governor; } ;
struct thermal_governor {int (* bind_to_tz ) (struct thermal_zone_device*) ;int name; int (* unbind_from_tz ) (struct thermal_zone_device*) ;} ;


 int bind_previous_governor (struct thermal_zone_device*,int ) ;
 int stub1 (struct thermal_zone_device*) ;
 int stub2 (struct thermal_zone_device*) ;

__attribute__((used)) static int thermal_set_governor(struct thermal_zone_device *tz,
    struct thermal_governor *new_gov)
{
 int ret = 0;

 if (tz->governor && tz->governor->unbind_from_tz)
  tz->governor->unbind_from_tz(tz);

 if (new_gov && new_gov->bind_to_tz) {
  ret = new_gov->bind_to_tz(tz);
  if (ret) {
   bind_previous_governor(tz, new_gov->name);

   return ret;
  }
 }

 tz->governor = new_gov;

 return ret;
}
