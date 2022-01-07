
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_pmu {scalar_t__ base; } ;


 scalar_t__ DDRC_PERF_CTRL ;
 int DDRC_PERF_CTRL_EN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hisi_ddrc_pmu_start_counters(struct hisi_pmu *ddrc_pmu)
{
 u32 val;


 val = readl(ddrc_pmu->base + DDRC_PERF_CTRL);
 val |= DDRC_PERF_CTRL_EN;
 writel(val, ddrc_pmu->base + DDRC_PERF_CTRL);
}
