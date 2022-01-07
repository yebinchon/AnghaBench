
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int read_temp_msr (int*) ;
 int stored_tjmax ;

__attribute__((used)) static int proc_thermal_get_zone_temp(struct thermal_zone_device *zone,
      int *temp)
{
 int ret;

 ret = read_temp_msr(temp);
 if (!ret)
  *temp = (stored_tjmax - *temp) * 1000;

 return ret;
}
