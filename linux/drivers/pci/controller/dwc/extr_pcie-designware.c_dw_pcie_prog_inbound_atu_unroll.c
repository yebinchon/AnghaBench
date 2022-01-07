
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct dw_pcie {int dev; } ;
typedef enum dw_pcie_as_type { ____Placeholder_dw_pcie_as_type } dw_pcie_as_type ;




 int EBUSY ;
 int EINVAL ;
 int LINK_WAIT_IATU ;
 scalar_t__ LINK_WAIT_MAX_IATU_RETRIES ;
 int PCIE_ATU_BAR_MODE_ENABLE ;
 int PCIE_ATU_ENABLE ;
 int PCIE_ATU_TYPE_IO ;
 int PCIE_ATU_TYPE_MEM ;
 int PCIE_ATU_UNR_LOWER_TARGET ;
 int PCIE_ATU_UNR_REGION_CTRL1 ;
 int PCIE_ATU_UNR_REGION_CTRL2 ;
 int PCIE_ATU_UNR_UPPER_TARGET ;
 int dev_err (int ,char*) ;
 scalar_t__ dw_pcie_readl_ib_unroll (struct dw_pcie*,int,int ) ;
 int dw_pcie_writel_ib_unroll (struct dw_pcie*,int,int ,int) ;
 int lower_32_bits (int ) ;
 int mdelay (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int dw_pcie_prog_inbound_atu_unroll(struct dw_pcie *pci, int index,
        int bar, u64 cpu_addr,
        enum dw_pcie_as_type as_type)
{
 int type;
 u32 retries, val;

 dw_pcie_writel_ib_unroll(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
     lower_32_bits(cpu_addr));
 dw_pcie_writel_ib_unroll(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
     upper_32_bits(cpu_addr));

 switch (as_type) {
 case 128:
  type = PCIE_ATU_TYPE_MEM;
  break;
 case 129:
  type = PCIE_ATU_TYPE_IO;
  break;
 default:
  return -EINVAL;
 }

 dw_pcie_writel_ib_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL1, type);
 dw_pcie_writel_ib_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
     PCIE_ATU_ENABLE |
     PCIE_ATU_BAR_MODE_ENABLE | (bar << 8));





 for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
  val = dw_pcie_readl_ib_unroll(pci, index,
           PCIE_ATU_UNR_REGION_CTRL2);
  if (val & PCIE_ATU_ENABLE)
   return 0;

  mdelay(LINK_WAIT_IATU);
 }
 dev_err(pci->dev, "Inbound iATU is not being enabled\n");

 return -EBUSY;
}
