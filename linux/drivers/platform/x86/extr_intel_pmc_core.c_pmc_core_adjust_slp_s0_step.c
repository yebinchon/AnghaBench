
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int SPT_PMC_SLP_S0_RES_COUNTER_STEP ;

__attribute__((used)) static inline u64 pmc_core_adjust_slp_s0_step(u32 value)
{
 return (u64)value * SPT_PMC_SLP_S0_RES_COUNTER_STEP;
}
