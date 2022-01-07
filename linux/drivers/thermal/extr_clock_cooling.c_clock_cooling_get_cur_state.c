
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {unsigned long clock_state; } ;



__attribute__((used)) static int clock_cooling_get_cur_state(struct thermal_cooling_device *cdev,
           unsigned long *state)
{
 struct clock_cooling_device *ccdev = cdev->devdata;

 *state = ccdev->clock_state;

 return 0;
}
