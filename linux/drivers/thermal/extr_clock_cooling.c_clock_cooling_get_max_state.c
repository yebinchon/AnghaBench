
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {int dummy; } ;


 int GET_MAXL ;
 int clock_cooling_get_property (struct clock_cooling_device*,int ,unsigned long*,int ) ;

__attribute__((used)) static int clock_cooling_get_max_state(struct thermal_cooling_device *cdev,
           unsigned long *state)
{
 struct clock_cooling_device *ccdev = cdev->devdata;
 unsigned long count = 0;
 int ret;

 ret = clock_cooling_get_property(ccdev, 0, &count, GET_MAXL);
 if (!ret)
  *state = count;

 return ret;
}
