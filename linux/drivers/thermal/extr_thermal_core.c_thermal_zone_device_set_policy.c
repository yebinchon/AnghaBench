
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int lock; } ;
struct thermal_governor {int dummy; } ;


 int EINVAL ;
 struct thermal_governor* __find_governor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strim (char*) ;
 int thermal_governor_lock ;
 int thermal_set_governor (struct thermal_zone_device*,struct thermal_governor*) ;

int thermal_zone_device_set_policy(struct thermal_zone_device *tz,
       char *policy)
{
 struct thermal_governor *gov;
 int ret = -EINVAL;

 mutex_lock(&thermal_governor_lock);
 mutex_lock(&tz->lock);

 gov = __find_governor(strim(policy));
 if (!gov)
  goto exit;

 ret = thermal_set_governor(tz, gov);

exit:
 mutex_unlock(&tz->lock);
 mutex_unlock(&thermal_governor_lock);

 return ret;
}
