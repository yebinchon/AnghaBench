
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ kstrtol (char const*,int,long*) ;
 scalar_t__ rtc_set_offset (int ,long) ;
 int to_rtc_device (struct device*) ;

__attribute__((used)) static ssize_t
offset_store(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t n)
{
 ssize_t retval;
 long offset;

 retval = kstrtol(buf, 10, &offset);
 if (retval == 0)
  retval = rtc_set_offset(to_rtc_device(dev), offset);

 return (retval < 0) ? retval : n;
}
