
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ pmu_base_addr ;
 scalar_t__ readl_relaxed (scalar_t__) ;

u32 pmu_raw_readl(u32 offset)
{
 return readl_relaxed(pmu_base_addr + offset);
}
