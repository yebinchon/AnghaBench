
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct devfreq_cooling_device* devdata; } ;
struct devfreq_cooling_device {struct devfreq_cooling_device* freq_table; struct devfreq_cooling_device* power_table; int id; int cdev; } ;


 int devfreq_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct devfreq_cooling_device*) ;
 int thermal_cooling_device_unregister (int ) ;

void devfreq_cooling_unregister(struct thermal_cooling_device *cdev)
{
 struct devfreq_cooling_device *dfc;

 if (!cdev)
  return;

 dfc = cdev->devdata;

 thermal_cooling_device_unregister(dfc->cdev);
 ida_simple_remove(&devfreq_ida, dfc->id);
 kfree(dfc->power_table);
 kfree(dfc->freq_table);

 kfree(dfc);
}
