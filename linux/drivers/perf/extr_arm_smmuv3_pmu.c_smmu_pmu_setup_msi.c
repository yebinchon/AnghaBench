
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int irq; scalar_t__ reg_base; struct device* dev; } ;
struct msi_desc {int irq; } ;
struct device {int dummy; } ;


 scalar_t__ SMMU_PMCG_CFGR ;
 int SMMU_PMCG_CFGR_MSI ;
 scalar_t__ SMMU_PMCG_IRQ_CFG0 ;
 int dev_warn (struct device*,char*) ;
 int devm_add_action (struct device*,int ,struct device*) ;
 struct msi_desc* first_msi_entry (struct device*) ;
 int platform_msi_domain_alloc_irqs (struct device*,int,int ) ;
 int readl (scalar_t__) ;
 int smmu_pmu_free_msis ;
 int smmu_pmu_write_msi_msg ;
 int writeq_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void smmu_pmu_setup_msi(struct smmu_pmu *pmu)
{
 struct msi_desc *desc;
 struct device *dev = pmu->dev;
 int ret;


 writeq_relaxed(0, pmu->reg_base + SMMU_PMCG_IRQ_CFG0);


 if (!(readl(pmu->reg_base + SMMU_PMCG_CFGR) & SMMU_PMCG_CFGR_MSI))
  return;

 ret = platform_msi_domain_alloc_irqs(dev, 1, smmu_pmu_write_msi_msg);
 if (ret) {
  dev_warn(dev, "failed to allocate MSIs\n");
  return;
 }

 desc = first_msi_entry(dev);
 if (desc)
  pmu->irq = desc->irq;


 devm_add_action(dev, smmu_pmu_free_msis, dev);
}
