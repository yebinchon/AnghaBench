
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {int dummy; } ;


 int clock_cooling_apply (struct clock_cooling_device*,unsigned long) ;

__attribute__((used)) static int clock_cooling_set_cur_state(struct thermal_cooling_device *cdev,
           unsigned long state)
{
 struct clock_cooling_device *clock_device = cdev->devdata;

 return clock_cooling_apply(clock_device, state);
}
