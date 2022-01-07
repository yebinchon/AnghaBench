
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mobiveil_msi {scalar_t__ msi_pages_phys; int num_of_vectors; } ;
struct mobiveil_pcie {scalar_t__ apb_csr_base; struct mobiveil_msi msi; scalar_t__ pcie_reg_base; } ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ MSI_BASE_HI_OFFSET ;
 scalar_t__ MSI_BASE_LO_OFFSET ;
 scalar_t__ MSI_ENABLE_OFFSET ;
 scalar_t__ MSI_SIZE_OFFSET ;
 int PCI_NUM_MSI ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
{
 phys_addr_t msg_addr = pcie->pcie_reg_base;
 struct mobiveil_msi *msi = &pcie->msi;

 pcie->msi.num_of_vectors = PCI_NUM_MSI;
 msi->msi_pages_phys = (phys_addr_t)msg_addr;

 writel_relaxed(lower_32_bits(msg_addr),
         pcie->apb_csr_base + MSI_BASE_LO_OFFSET);
 writel_relaxed(upper_32_bits(msg_addr),
         pcie->apb_csr_base + MSI_BASE_HI_OFFSET);
 writel_relaxed(4096, pcie->apb_csr_base + MSI_SIZE_OFFSET);
 writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
}
