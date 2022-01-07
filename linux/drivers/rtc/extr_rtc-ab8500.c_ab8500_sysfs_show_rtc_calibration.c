
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ab8500_rtc_get_calibration (struct device*,int*) ;
 int dev_err (struct device*,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t ab8500_sysfs_show_rtc_calibration(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int retval = 0;
 int calibration = 0;

 retval = ab8500_rtc_get_calibration(dev, &calibration);
 if (retval < 0) {
  dev_err(dev, "Failed to read RTC calibration attribute\n");
  sprintf(buf, "0\n");
  return retval;
 }

 return sprintf(buf, "%d\n", calibration);
}
