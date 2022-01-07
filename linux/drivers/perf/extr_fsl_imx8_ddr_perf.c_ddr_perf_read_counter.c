
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ddr_pmu {scalar_t__ base; } ;


 scalar_t__ COUNTER_READ ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 ddr_perf_read_counter(struct ddr_pmu *pmu, int counter)
{
 return readl_relaxed(pmu->base + COUNTER_READ + counter * 4);
}
