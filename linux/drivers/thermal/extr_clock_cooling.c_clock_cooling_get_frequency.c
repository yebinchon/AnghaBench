
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_cooling_device {int dummy; } ;


 int GET_FREQ ;
 int clock_cooling_get_property (struct clock_cooling_device*,unsigned long,unsigned long*,int ) ;

__attribute__((used)) static unsigned long
clock_cooling_get_frequency(struct clock_cooling_device *ccdev,
       unsigned long level)
{
 int ret = 0;
 unsigned long freq;

 ret = clock_cooling_get_property(ccdev, level, &freq, GET_FREQ);
 if (ret)
  return 0;

 return freq;
}
