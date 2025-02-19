
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smmu_pmu {scalar_t__ reg_base; } ;
struct msi_msg {int address_lo; int data; scalar_t__ address_hi; } ;
struct msi_desc {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;


 int MSI_CFG0_ADDR_MASK ;
 int MSI_CFG2_MEMATTR_DEVICE_nGnRE ;
 scalar_t__ SMMU_PMCG_IRQ_CFG0 ;
 scalar_t__ SMMU_PMCG_IRQ_CFG1 ;
 scalar_t__ SMMU_PMCG_IRQ_CFG2 ;
 struct smmu_pmu* dev_get_drvdata (struct device*) ;
 struct device* msi_desc_to_dev (struct msi_desc*) ;
 int writel_relaxed (int ,scalar_t__) ;
 int writeq_relaxed (int,scalar_t__) ;

__attribute__((used)) static void smmu_pmu_write_msi_msg(struct msi_desc *desc, struct msi_msg *msg)
{
 phys_addr_t doorbell;
 struct device *dev = msi_desc_to_dev(desc);
 struct smmu_pmu *pmu = dev_get_drvdata(dev);

 doorbell = (((u64)msg->address_hi) << 32) | msg->address_lo;
 doorbell &= MSI_CFG0_ADDR_MASK;

 writeq_relaxed(doorbell, pmu->reg_base + SMMU_PMCG_IRQ_CFG0);
 writel_relaxed(msg->data, pmu->reg_base + SMMU_PMCG_IRQ_CFG1);
 writel_relaxed(MSI_CFG2_MEMATTR_DEVICE_nGnRE,
         pmu->reg_base + SMMU_PMCG_IRQ_CFG2);
}
