
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3cache_pmu {scalar_t__ regs; } ;


 int BC_CNTENCLR_RESET ;
 int BC_ENABLE ;
 int BC_GANG_RESET ;
 int BC_INTENCLR_RESET ;
 int BC_IRQCTL_RESET ;
 int BC_RESET ;
 int BC_SATROLL_CR_RESET ;
 int EVSEL (int ) ;
 scalar_t__ L3_HML3_PM_CNTCTL (int) ;
 scalar_t__ L3_HML3_PM_CR ;
 scalar_t__ L3_HML3_PM_EVTYPE (int) ;
 scalar_t__ L3_HML3_PM_FILTRA ;
 scalar_t__ L3_HML3_PM_FILTRAM ;
 scalar_t__ L3_HML3_PM_FILTRB ;
 scalar_t__ L3_HML3_PM_FILTRBM ;
 scalar_t__ L3_HML3_PM_FILTRC ;
 scalar_t__ L3_HML3_PM_FILTRCM ;
 scalar_t__ L3_M_BC_CNTENCLR ;
 scalar_t__ L3_M_BC_CR ;
 scalar_t__ L3_M_BC_GANG ;
 scalar_t__ L3_M_BC_INTENCLR ;
 scalar_t__ L3_M_BC_IRQCTL ;
 scalar_t__ L3_M_BC_OVSR ;
 scalar_t__ L3_M_BC_SATROLL_CR ;
 int L3_NUM_COUNTERS ;
 int PMCNT_RESET ;
 int PMOVSRCLR_RESET ;
 int PM_CR_RESET ;
 int PM_FLTR_RESET ;
 int writel (int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void qcom_l3_cache__init(struct l3cache_pmu *l3pmu)
{
 int i;

 writel_relaxed(BC_RESET, l3pmu->regs + L3_M_BC_CR);





 writel(BC_SATROLL_CR_RESET, l3pmu->regs + L3_M_BC_SATROLL_CR);

 writel_relaxed(BC_CNTENCLR_RESET, l3pmu->regs + L3_M_BC_CNTENCLR);
 writel_relaxed(BC_INTENCLR_RESET, l3pmu->regs + L3_M_BC_INTENCLR);
 writel_relaxed(PMOVSRCLR_RESET, l3pmu->regs + L3_M_BC_OVSR);
 writel_relaxed(BC_GANG_RESET, l3pmu->regs + L3_M_BC_GANG);
 writel_relaxed(BC_IRQCTL_RESET, l3pmu->regs + L3_M_BC_IRQCTL);
 writel_relaxed(PM_CR_RESET, l3pmu->regs + L3_HML3_PM_CR);

 for (i = 0; i < L3_NUM_COUNTERS; ++i) {
  writel_relaxed(PMCNT_RESET, l3pmu->regs + L3_HML3_PM_CNTCTL(i));
  writel_relaxed(EVSEL(0), l3pmu->regs + L3_HML3_PM_EVTYPE(i));
 }

 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRA);
 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRAM);
 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRB);
 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRBM);
 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRC);
 writel_relaxed(PM_FLTR_RESET, l3pmu->regs + L3_HML3_PM_FILTRCM);





 writel(BC_ENABLE, l3pmu->regs + L3_M_BC_CR);
}
