
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dw_pcie {int dummy; } ;


 int DRA7XX_CPU_TO_BUS_ADDR ;

__attribute__((used)) static u64 dra7xx_pcie_cpu_addr_fixup(struct dw_pcie *pci, u64 pci_addr)
{
 return pci_addr & DRA7XX_CPU_TO_BUS_ADDR;
}
