
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_zone_device {int dummy; } ;


 int WARN_ON (int ) ;
 int mid_read_temp (struct thermal_zone_device*,int*) ;

__attribute__((used)) static int read_curr_temp(struct thermal_zone_device *tzd, int *temp)
{
 WARN_ON(tzd == ((void*)0));
 return mid_read_temp(tzd, temp);
}
