
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int clamp_val (int,int ,int ) ;
 int dev_info (struct device*,char*,int,int) ;
 int max_high_temp ;
 int min_low_temp ;

__attribute__((used)) static int enforce_temp_range(struct device *dev, int trip_temp)
{
 int temp;

 temp = clamp_val(trip_temp, min_low_temp, max_high_temp);
 if (temp != trip_temp)
  dev_info(dev, "soctherm: trip temperature %d forced to %d\n",
    trip_temp, temp);
 return temp;
}
