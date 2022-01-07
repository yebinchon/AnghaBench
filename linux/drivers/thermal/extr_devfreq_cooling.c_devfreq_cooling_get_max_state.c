
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct devfreq_cooling_device* devdata; } ;
struct devfreq_cooling_device {int freq_table_size; } ;



__attribute__((used)) static int devfreq_cooling_get_max_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 struct devfreq_cooling_device *dfc = cdev->devdata;

 *state = dfc->freq_table_size - 1;

 return 0;
}
