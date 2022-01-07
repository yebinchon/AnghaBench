
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_pmu {scalar_t__ base; } ;


 scalar_t__ HHA_PERF_CTRL ;
 int HHA_PERF_CTRL_EN ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hisi_hha_pmu_start_counters(struct hisi_pmu *hha_pmu)
{
 u32 val;





 val = readl(hha_pmu->base + HHA_PERF_CTRL);
 val |= HHA_PERF_CTRL_EN;
 writel(val, hha_pmu->base + HHA_PERF_CTRL);
}
