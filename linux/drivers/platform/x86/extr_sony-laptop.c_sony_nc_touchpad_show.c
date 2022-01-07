
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 scalar_t__ sony_call_snc_handle (int ,int,unsigned int*) ;
 TYPE_1__* tp_ctl ;

__attribute__((used)) static ssize_t sony_nc_touchpad_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 unsigned int result;

 if (sony_call_snc_handle(tp_ctl->handle, 0x000, &result))
  return -EINVAL;

 return snprintf(buffer, PAGE_SIZE, "%d\n", !(result & 0x01));
}
