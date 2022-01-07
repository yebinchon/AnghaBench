
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_CALIB_REG ;
 int abx500_get_register_interruptible (struct device*,int ,int ,int*) ;

__attribute__((used)) static int ab8500_rtc_get_calibration(struct device *dev, int *calibration)
{
 int retval;
 u8 rtccal = 0;

 retval = abx500_get_register_interruptible(dev, AB8500_RTC,
   AB8500_RTC_CALIB_REG, &rtccal);
 if (retval >= 0) {





  if (rtccal & 0x80)
   *calibration = 0 - (rtccal & 0x7F);
  else
   *calibration = 0x7F & rtccal;
 }

 return retval;
}
