
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 pm8941_wled_switch_freq_values_fn(u32 idx)
{
 return 19200 / (2 * (1 + idx));
}
