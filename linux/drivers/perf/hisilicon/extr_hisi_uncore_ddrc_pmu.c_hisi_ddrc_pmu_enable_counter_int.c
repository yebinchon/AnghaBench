
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hw_perf_event {int dummy; } ;
struct hisi_pmu {scalar_t__ base; } ;


 scalar_t__ DDRC_INT_MASK ;
 int GET_DDRC_EVENTID (struct hw_perf_event*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_ddrc_pmu_enable_counter_int(struct hisi_pmu *ddrc_pmu,
          struct hw_perf_event *hwc)
{
 u32 val;


 val = readl(ddrc_pmu->base + DDRC_INT_MASK);
 val &= ~(1 << GET_DDRC_EVENTID(hwc));
 writel(val, ddrc_pmu->base + DDRC_INT_MASK);
}
