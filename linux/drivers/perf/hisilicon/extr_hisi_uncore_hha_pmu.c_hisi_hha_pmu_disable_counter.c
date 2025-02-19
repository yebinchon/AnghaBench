
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_perf_event {int idx; } ;
struct hisi_pmu {scalar_t__ base; } ;


 scalar_t__ HHA_EVENT_CTRL ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_hha_pmu_disable_counter(struct hisi_pmu *hha_pmu,
      struct hw_perf_event *hwc)
{
 u32 val;


 val = readl(hha_pmu->base + HHA_EVENT_CTRL);
 val &= ~(1 << hwc->idx);
 writel(val, hha_pmu->base + HHA_EVENT_CTRL);
}
