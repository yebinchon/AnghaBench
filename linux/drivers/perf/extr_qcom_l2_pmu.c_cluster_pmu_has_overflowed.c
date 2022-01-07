
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int l2_counter_present_mask ;

__attribute__((used)) static inline bool cluster_pmu_has_overflowed(u32 ovsr)
{
 return !!(ovsr & l2_counter_present_mask);
}
