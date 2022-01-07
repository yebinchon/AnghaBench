
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char** snc_thermal_profiles ;
 int snprintf (char*,int ,char*,char*) ;
 int sony_nc_thermal_mode_get () ;

__attribute__((used)) static ssize_t sony_nc_thermal_mode_show(struct device *dev,
  struct device_attribute *attr, char *buffer)
{
 ssize_t count = 0;
 int mode = sony_nc_thermal_mode_get();

 if (mode < 0)
  return mode;

 count = snprintf(buffer, PAGE_SIZE, "%s\n", snc_thermal_profiles[mode]);

 return count;
}
