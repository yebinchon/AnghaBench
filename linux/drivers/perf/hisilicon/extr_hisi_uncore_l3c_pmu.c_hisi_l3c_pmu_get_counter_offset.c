
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ L3C_CNTR0_LOWER ;

__attribute__((used)) static u32 hisi_l3c_pmu_get_counter_offset(int cntr_idx)
{
 return (L3C_CNTR0_LOWER + (cntr_idx * 8));
}
