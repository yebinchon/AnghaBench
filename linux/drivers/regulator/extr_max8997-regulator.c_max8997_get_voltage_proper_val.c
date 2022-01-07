
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voltage_map_desc {int min; int max; int step; } ;


 int DIV_ROUND_UP (int,int) ;
 int EINVAL ;

__attribute__((used)) static inline int max8997_get_voltage_proper_val(
  const struct voltage_map_desc *desc,
  int min_vol, int max_vol)
{
 int i;

 if (desc == ((void*)0))
  return -EINVAL;

 if (max_vol < desc->min || min_vol > desc->max)
  return -EINVAL;

 if (min_vol < desc->min)
  min_vol = desc->min;

 i = DIV_ROUND_UP(min_vol - desc->min, desc->step);

 if (desc->min + desc->step * i > max_vol)
  return -EINVAL;

 return i;
}
