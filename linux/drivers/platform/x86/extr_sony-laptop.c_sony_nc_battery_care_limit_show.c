
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int EIO ;
 int PAGE_SIZE ;
 TYPE_1__* bcare_ctl ;
 int snprintf (char*,int ,char*,unsigned int) ;
 scalar_t__ sony_call_snc_handle (int ,int,unsigned int*) ;

__attribute__((used)) static ssize_t sony_nc_battery_care_limit_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 unsigned int result, status;

 if (sony_call_snc_handle(bcare_ctl->handle, 0x0000, &result))
  return -EIO;

 status = (result & 0x01) ? ((result & 0x30) >> 0x04) : 0;
 switch (status) {
 case 1:
  status = 80;
  break;
 case 2:
  status = 50;
  break;
 case 3:
  status = 100;
  break;
 default:
  status = 0;
  break;
 }

 return snprintf(buffer, PAGE_SIZE, "%d\n", status);
}
