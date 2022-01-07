
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef long s64 ;


 int ERANGE ;
 long MAX_OFFSET ;
 long MIN_OFFSET ;
 long long PPB_MULT ;
 scalar_t__ TICKS_PER_HOUR ;
 long div_s64 (long,long long) ;
 int tps65910_rtc_set_calibration (struct device*,int) ;

__attribute__((used)) static int tps65910_set_offset(struct device *dev, long offset)
{
 int calibration;
 s64 tmp;
 int ret;


 if (offset < MIN_OFFSET || offset > MAX_OFFSET)
  return -ERANGE;


 tmp = offset * (s64)TICKS_PER_HOUR;
 if (tmp < 0)
  tmp -= PPB_MULT / 2LL;
 else
  tmp += PPB_MULT / 2LL;
 tmp = div_s64(tmp, PPB_MULT);


 calibration = (int)-tmp;

 ret = tps65910_rtc_set_calibration(dev, calibration);

 return ret;
}
