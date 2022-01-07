
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct devfreq_cooling_device* devdata; } ;
struct devfreq_cooling_device {unsigned long cooling_state; } ;



__attribute__((used)) static int devfreq_cooling_get_cur_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 struct devfreq_cooling_device *dfc = cdev->devdata;

 *state = dfc->cooling_state;

 return 0;
}
