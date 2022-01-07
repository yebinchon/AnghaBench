
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {short profiles; } ;


 scalar_t__ PAGE_SIZE ;
 short THM_PROFILE_MAX ;
 char** snc_thermal_profiles ;
 scalar_t__ snprintf (char*,scalar_t__,char*,...) ;
 TYPE_1__* th_handle ;

__attribute__((used)) static ssize_t sony_nc_thermal_profiles_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 short cnt;
 size_t idx = 0;

 for (cnt = 0; cnt < THM_PROFILE_MAX; cnt++) {
  if (!cnt || (th_handle->profiles & cnt))
   idx += snprintf(buffer + idx, PAGE_SIZE - idx, "%s ",
     snc_thermal_profiles[cnt]);
 }
 idx += snprintf(buffer + idx, PAGE_SIZE - idx, "\n");

 return idx;
}
