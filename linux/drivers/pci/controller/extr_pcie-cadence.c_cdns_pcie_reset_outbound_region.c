
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cdns_pcie {int dummy; } ;


 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR0 (int ) ;
 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR1 (int ) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0 (int ) ;
 int CDNS_PCIE_AT_OB_REGION_DESC1 (int ) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR0 (int ) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR1 (int ) ;
 int cdns_pcie_writel (struct cdns_pcie*,int ,int ) ;

void cdns_pcie_reset_outbound_region(struct cdns_pcie *pcie, u32 r)
{
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(r), 0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(r), 0);

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC0(r), 0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC1(r), 0);

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(r), 0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(r), 0);
}
