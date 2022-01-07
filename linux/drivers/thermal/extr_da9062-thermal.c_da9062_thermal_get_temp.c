
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {struct da9062_thermal* devdata; } ;
struct da9062_thermal {int temperature; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int da9062_thermal_get_temp(struct thermal_zone_device *z,
       int *temp)
{
 struct da9062_thermal *thermal = z->devdata;

 mutex_lock(&thermal->lock);
 *temp = thermal->temperature;
 mutex_unlock(&thermal->lock);

 return 0;
}
