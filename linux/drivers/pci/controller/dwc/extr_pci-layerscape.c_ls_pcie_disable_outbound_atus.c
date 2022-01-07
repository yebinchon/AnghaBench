
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_pcie {int pci; } ;


 int DW_PCIE_REGION_OUTBOUND ;
 int PCIE_IATU_NUM ;
 int dw_pcie_disable_atu (int ,int,int ) ;

__attribute__((used)) static void ls_pcie_disable_outbound_atus(struct ls_pcie *pcie)
{
 int i;

 for (i = 0; i < PCIE_IATU_NUM; i++)
  dw_pcie_disable_atu(pcie->pci, i, DW_PCIE_REGION_OUTBOUND);
}
