
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {scalar_t__ reg_base; } ;
struct pmu {int dummy; } ;


 scalar_t__ SMMU_PMCG_CR ;
 int SMMU_PMCG_CR_ENABLE ;
 scalar_t__ SMMU_PMCG_IRQ_CTRL ;
 int SMMU_PMCG_IRQ_CTRL_IRQEN ;
 struct smmu_pmu* to_smmu_pmu (struct pmu*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void smmu_pmu_enable(struct pmu *pmu)
{
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(pmu);

 writel(SMMU_PMCG_IRQ_CTRL_IRQEN,
        smmu_pmu->reg_base + SMMU_PMCG_IRQ_CTRL);
 writel(SMMU_PMCG_CR_ENABLE, smmu_pmu->reg_base + SMMU_PMCG_CR);
}
