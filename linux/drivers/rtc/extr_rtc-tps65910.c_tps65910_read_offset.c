
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int s64 ;


 scalar_t__ PPB_MULT ;
 long long TICKS_PER_HOUR ;
 int div_s64 (int,long long) ;
 int tps65910_rtc_get_calibration (struct device*,int*) ;

__attribute__((used)) static int tps65910_read_offset(struct device *dev, long *offset)
{
 int calibration;
 s64 tmp;
 int ret;

 ret = tps65910_rtc_get_calibration(dev, &calibration);
 if (ret < 0)
  return ret;


 tmp = calibration * (s64)PPB_MULT;
 if (tmp < 0)
  tmp -= TICKS_PER_HOUR / 2LL;
 else
  tmp += TICKS_PER_HOUR / 2LL;
 tmp = div_s64(tmp, TICKS_PER_HOUR);


 *offset = (long)-tmp;

 return 0;
}
