
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct clock_cooling_device* devdata; } ;
struct clock_cooling_device {int dummy; } ;


 int GET_LEVEL ;
 unsigned long THERMAL_CSTATE_INVALID ;
 scalar_t__ clock_cooling_get_property (struct clock_cooling_device*,unsigned long,unsigned long*,int ) ;

unsigned long clock_cooling_get_level(struct thermal_cooling_device *cdev,
          unsigned long freq)
{
 struct clock_cooling_device *ccdev = cdev->devdata;
 unsigned long val;

 if (clock_cooling_get_property(ccdev, (unsigned long)freq, &val,
           GET_LEVEL))
  return THERMAL_CSTATE_INVALID;

 return val;
}
