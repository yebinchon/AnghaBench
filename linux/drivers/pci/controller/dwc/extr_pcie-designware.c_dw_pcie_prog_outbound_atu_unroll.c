
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct dw_pcie {int dev; } ;


 int LINK_WAIT_IATU ;
 scalar_t__ LINK_WAIT_MAX_IATU_RETRIES ;
 scalar_t__ PCIE_ATU_ENABLE ;
 int PCIE_ATU_UNR_LIMIT ;
 int PCIE_ATU_UNR_LOWER_BASE ;
 int PCIE_ATU_UNR_LOWER_TARGET ;
 int PCIE_ATU_UNR_REGION_CTRL1 ;
 int PCIE_ATU_UNR_REGION_CTRL2 ;
 int PCIE_ATU_UNR_UPPER_BASE ;
 int PCIE_ATU_UNR_UPPER_TARGET ;
 int dev_err (int ,char*) ;
 scalar_t__ dw_pcie_readl_ob_unroll (struct dw_pcie*,int,int ) ;
 int dw_pcie_writel_ob_unroll (struct dw_pcie*,int,int ,scalar_t__) ;
 scalar_t__ lower_32_bits (scalar_t__) ;
 int mdelay (int ) ;
 scalar_t__ upper_32_bits (scalar_t__) ;

__attribute__((used)) static void dw_pcie_prog_outbound_atu_unroll(struct dw_pcie *pci, int index,
          int type, u64 cpu_addr,
          u64 pci_addr, u32 size)
{
 u32 retries, val;

 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LOWER_BASE,
     lower_32_bits(cpu_addr));
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_UPPER_BASE,
     upper_32_bits(cpu_addr));
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LIMIT,
     lower_32_bits(cpu_addr + size - 1));
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
     lower_32_bits(pci_addr));
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
     upper_32_bits(pci_addr));
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL1,
     type);
 dw_pcie_writel_ob_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
     PCIE_ATU_ENABLE);





 for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
  val = dw_pcie_readl_ob_unroll(pci, index,
           PCIE_ATU_UNR_REGION_CTRL2);
  if (val & PCIE_ATU_ENABLE)
   return;

  mdelay(LINK_WAIT_IATU);
 }
 dev_err(pci->dev, "Outbound iATU is not being enabled\n");
}
