
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int * ddrc_reg_off ;

__attribute__((used)) static u32 hisi_ddrc_pmu_get_counter_offset(int cntr_idx)
{
 return ddrc_reg_off[cntr_idx];
}
