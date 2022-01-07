
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long long u64 ;
typedef int u32 ;
struct cdns_pcie {TYPE_1__* mem_res; int bus; scalar_t__ is_rc; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS (int) ;
 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR1 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN (int ) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM ;
 int CDNS_PCIE_AT_OB_REGION_DESC1 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC1_BUS (int ) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR0_NBITS (int) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR1 (int) ;
 int GENMASK (int,int) ;
 int cdns_pcie_writel (struct cdns_pcie*,int ,int) ;
 unsigned long long fls64 (size_t) ;
 int ilog2 (unsigned long long) ;
 int lower_32_bits (unsigned long long) ;
 int upper_32_bits (unsigned long long) ;

void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
       u32 r, bool is_io,
       u64 cpu_addr, u64 pci_addr, size_t size)
{




 u64 sz = 1ULL << fls64(size - 1);
 int nbits = ilog2(sz);
 u32 addr0, addr1, desc0, desc1;

 if (nbits < 8)
  nbits = 8;


 addr0 = CDNS_PCIE_AT_OB_REGION_PCI_ADDR0_NBITS(nbits) |
  (lower_32_bits(pci_addr) & GENMASK(31, 8));
 addr1 = upper_32_bits(pci_addr);

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(r), addr0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(r), addr1);


 if (is_io)
  desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_IO;
 else
  desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_MEM;
 desc1 = 0;
 if (pcie->is_rc) {

  desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID |
    CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(0);
  desc1 |= CDNS_PCIE_AT_OB_REGION_DESC1_BUS(pcie->bus);
 } else {




  desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(fn);
 }

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC0(r), desc0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC1(r), desc1);


 cpu_addr -= pcie->mem_res->start;
 addr0 = CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(nbits) |
  (lower_32_bits(cpu_addr) & GENMASK(31, 8));
 addr1 = upper_32_bits(cpu_addr);

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(r), addr0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(r), addr1);
}
