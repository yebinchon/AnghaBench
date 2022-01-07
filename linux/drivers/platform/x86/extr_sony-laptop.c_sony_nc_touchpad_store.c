
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
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 scalar_t__ sony_call_snc_handle (int ,int,unsigned int*) ;
 TYPE_1__* tp_ctl ;

__attribute__((used)) static ssize_t sony_nc_touchpad_store(struct device *dev,
  struct device_attribute *attr, const char *buffer, size_t count)
{
 unsigned int result;
 unsigned long value;

 if (count > 31)
  return -EINVAL;

 if (kstrtoul(buffer, 10, &value) || value > 1)
  return -EINVAL;




 if (sony_call_snc_handle(tp_ctl->handle,
    (!value << 0x10) | 0x100, &result))
  return -EIO;

 return count;
}
