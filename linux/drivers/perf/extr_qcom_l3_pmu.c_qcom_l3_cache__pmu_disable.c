
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct l3cache_pmu {scalar_t__ regs; } ;


 scalar_t__ L3_M_BC_CR ;
 struct l3cache_pmu* to_l3cache_pmu (struct pmu*) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void qcom_l3_cache__pmu_disable(struct pmu *pmu)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(pmu);

 writel_relaxed(0, l3pmu->regs + L3_M_BC_CR);


 wmb();
}
