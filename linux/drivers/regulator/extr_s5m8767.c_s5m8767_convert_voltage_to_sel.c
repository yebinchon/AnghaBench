
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_voltage_desc {int max; int min; int step; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;

__attribute__((used)) static int s5m8767_convert_voltage_to_sel(const struct sec_voltage_desc *desc,
       int min_vol)
{
 int selector = 0;

 if (desc == ((void*)0))
  return -EINVAL;

 if (min_vol > desc->max)
  return -EINVAL;

 if (min_vol < desc->min)
  min_vol = desc->min;

 selector = DIV_ROUND_UP(min_vol - desc->min, desc->step);

 if (desc->min + desc->step * selector > desc->max)
  return -EINVAL;

 return selector;
}
