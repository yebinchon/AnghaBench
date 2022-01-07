
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ pmu_base_addr ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

void pmu_raw_writel(u32 val, u32 offset)
{
 writel_relaxed(val, pmu_base_addr + offset);
}
