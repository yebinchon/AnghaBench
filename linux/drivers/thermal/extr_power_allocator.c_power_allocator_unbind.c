
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct power_allocator_params* governor_data; struct power_allocator_params* tzp; int id; int device; } ;
struct power_allocator_params {scalar_t__ allocated_tzp; } ;


 int dev_dbg (int *,char*,int ) ;
 int kfree (struct power_allocator_params*) ;

__attribute__((used)) static void power_allocator_unbind(struct thermal_zone_device *tz)
{
 struct power_allocator_params *params = tz->governor_data;

 dev_dbg(&tz->device, "Unbinding from thermal zone %d\n", tz->id);

 if (params->allocated_tzp) {
  kfree(tz->tzp);
  tz->tzp = ((void*)0);
 }

 kfree(tz->governor_data);
 tz->governor_data = ((void*)0);
}
