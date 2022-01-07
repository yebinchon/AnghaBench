
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powercap_zone {int dev; } ;
struct powercap_control_type {int lock; int nr_zones; } ;


 int EINVAL ;
 int device_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int powercap_unregister_zone(struct powercap_control_type *control_type,
    struct powercap_zone *power_zone)
{
 if (!power_zone || !control_type)
  return -EINVAL;

 mutex_lock(&control_type->lock);
 control_type->nr_zones--;
 mutex_unlock(&control_type->lock);

 device_unregister(&power_zone->dev);

 return 0;
}
