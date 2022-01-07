
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_pmu {int base; } ;


 int L3C_EVENT_TYPE0 ;
 int L3C_EVTYPE_NONE ;
 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void hisi_l3c_pmu_write_evtype(struct hisi_pmu *l3c_pmu, int idx,
          u32 type)
{
 u32 reg, reg_idx, shift, val;
 reg = L3C_EVENT_TYPE0 + (idx / 4) * 4;
 reg_idx = idx % 4;
 shift = 8 * reg_idx;


 val = readl(l3c_pmu->base + reg);
 val &= ~(L3C_EVTYPE_NONE << shift);
 val |= (type << shift);
 writel(val, l3c_pmu->base + reg);
}
