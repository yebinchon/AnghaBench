
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int handle; } ;


 size_t EINVAL ;
 size_t EIO ;
 TYPE_1__* bcare_ctl ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 scalar_t__ sony_call_snc_handle (int,unsigned int,unsigned int*) ;

__attribute__((used)) static ssize_t sony_nc_battery_care_limit_store(struct device *dev,
  struct device_attribute *attr,
  const char *buffer, size_t count)
{
 unsigned int result, cmd;
 unsigned long value;

 if (count > 31)
  return -EINVAL;

 if (kstrtoul(buffer, 10, &value))
  return -EINVAL;
 cmd = 0;

 if (value > 0) {
  if (value <= 50)
   cmd = 0x20;

  else if (value <= 80)
   cmd = 0x10;

  else if (value <= 100)
   cmd = 0x30;

  else
   return -EINVAL;






  if (bcare_ctl->handle != 0x013f)
   cmd = cmd | (cmd << 2);

  cmd = (cmd | 0x1) << 0x10;
 }

 if (sony_call_snc_handle(bcare_ctl->handle, cmd | 0x0100, &result))
  return -EIO;

 return count;
}
