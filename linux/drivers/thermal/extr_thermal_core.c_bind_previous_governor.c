
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thermal_zone_device {TYPE_1__* governor; int type; int device; } ;
struct TYPE_2__ {int name; scalar_t__ (* bind_to_tz ) (struct thermal_zone_device*) ;} ;


 int dev_err (int *,char*,char const*,int ,int ) ;
 scalar_t__ stub1 (struct thermal_zone_device*) ;

__attribute__((used)) static void bind_previous_governor(struct thermal_zone_device *tz,
       const char *failed_gov_name)
{
 if (tz->governor && tz->governor->bind_to_tz) {
  if (tz->governor->bind_to_tz(tz)) {
   dev_err(&tz->device,
    "governor %s failed to bind and the previous one (%s) failed to bind again, thermal zone %s has no governor\n",
    failed_gov_name, tz->governor->name, tz->type);
   tz->governor = ((void*)0);
  }
 }
}
