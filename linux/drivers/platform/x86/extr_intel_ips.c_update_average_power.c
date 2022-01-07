
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int power_decay_factor ;

__attribute__((used)) static u16 update_average_power(u32 avg, u32 val)
{
 u32 ret;

 ret = (val / power_decay_factor) +
  (((power_decay_factor - 1) * avg) / power_decay_factor);

 return ret;
}
