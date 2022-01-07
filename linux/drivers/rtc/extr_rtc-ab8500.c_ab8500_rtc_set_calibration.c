
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int AB8500_RTC ;
 int AB8500_RTC_CALIB_REG ;
 int EINVAL ;
 int abx500_set_register_interruptible (struct device*,int ,int ,int) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int ab8500_rtc_set_calibration(struct device *dev, int calibration)
{
 int retval;
 u8 rtccal = 0;
 if ((calibration < -127) || (calibration > 127)) {
  dev_err(dev, "RtcCalibration value outside permitted range\n");
  return -EINVAL;
 }






 if (calibration >= 0)
  rtccal = 0x7F & calibration;
 else
  rtccal = ~(calibration - 1) | 0x80;

 retval = abx500_set_register_interruptible(dev, AB8500_RTC,
   AB8500_RTC_CALIB_REG, rtccal);

 return retval;
}
