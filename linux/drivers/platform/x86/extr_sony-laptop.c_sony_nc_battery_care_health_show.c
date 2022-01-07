
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

__attribute__((used)) static ssize_t sony_nc_battery_care_health_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 ssize_t count = 0;
 unsigned int health;

 if (sony_call_snc_handle(bcare_ctl->handle, 0x0200, &health))
  return -EIO;

 count = snprintf(buffer, PAGE_SIZE, "%d\n", health & 0xff);

 return count;
}
