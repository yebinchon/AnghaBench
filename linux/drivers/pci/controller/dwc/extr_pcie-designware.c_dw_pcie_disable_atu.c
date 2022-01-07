
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;
typedef enum dw_pcie_region_type { ____Placeholder_dw_pcie_region_type } dw_pcie_region_type ;




 int PCIE_ATU_CR2 ;
 scalar_t__ PCIE_ATU_ENABLE ;
 int PCIE_ATU_REGION_INBOUND ;
 int PCIE_ATU_REGION_OUTBOUND ;
 int PCIE_ATU_VIEWPORT ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;

void dw_pcie_disable_atu(struct dw_pcie *pci, int index,
    enum dw_pcie_region_type type)
{
 int region;

 switch (type) {
 case 129:
  region = PCIE_ATU_REGION_INBOUND;
  break;
 case 128:
  region = PCIE_ATU_REGION_OUTBOUND;
  break;
 default:
  return;
 }

 dw_pcie_writel_dbi(pci, PCIE_ATU_VIEWPORT, region | index);
 dw_pcie_writel_dbi(pci, PCIE_ATU_CR2, (u32)~PCIE_ATU_ENABLE);
}
