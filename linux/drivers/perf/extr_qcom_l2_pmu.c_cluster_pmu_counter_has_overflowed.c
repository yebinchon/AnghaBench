
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int idx_to_reg_bit (int) ;

__attribute__((used)) static inline bool cluster_pmu_counter_has_overflowed(u32 ovsr, u32 idx)
{
 return !!(ovsr & idx_to_reg_bit(idx));
}
