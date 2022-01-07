
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct ips_driver {int dummy; } ;


 int IPS_SAMPLE_COUNT ;
 int do_div (scalar_t__,int) ;

__attribute__((used)) static u32 calc_avg_power(struct ips_driver *ips, u32 *array)
{
 u64 total = 0;
 u32 avg;
 int i;

 for (i = 0; i < IPS_SAMPLE_COUNT; i++)
  total += array[i];

 do_div(total, IPS_SAMPLE_COUNT);
 avg = (u32)total;

 return avg;
}
