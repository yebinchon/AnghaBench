
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct cdns_pcie {TYPE_1__* mem_res; int bus; scalar_t__ is_rc; } ;
struct TYPE_2__ {scalar_t__ start; } ;


 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS (int) ;
 int CDNS_PCIE_AT_OB_REGION_CPU_ADDR1 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN (int ) ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID ;
 int CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG ;
 int CDNS_PCIE_AT_OB_REGION_DESC1 (int) ;
 int CDNS_PCIE_AT_OB_REGION_DESC1_BUS (int ) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR0 (int) ;
 int CDNS_PCIE_AT_OB_REGION_PCI_ADDR1 (int) ;
 int GENMASK (int,int) ;
 int cdns_pcie_writel (struct cdns_pcie*,int ,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

void cdns_pcie_set_outbound_region_for_normal_msg(struct cdns_pcie *pcie, u8 fn,
        u32 r, u64 cpu_addr)
{
 u32 addr0, addr1, desc0, desc1;

 desc0 = CDNS_PCIE_AT_OB_REGION_DESC0_TYPE_NORMAL_MSG;
 desc1 = 0;


 if (pcie->is_rc) {
  desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_HARDCODED_RID |
    CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(0);
  desc1 |= CDNS_PCIE_AT_OB_REGION_DESC1_BUS(pcie->bus);
 } else {
  desc0 |= CDNS_PCIE_AT_OB_REGION_DESC0_DEVFN(fn);
 }


 cpu_addr -= pcie->mem_res->start;
 addr0 = CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(17) |
  (lower_32_bits(cpu_addr) & GENMASK(31, 8));
 addr1 = upper_32_bits(cpu_addr);

 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR0(r), 0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(r), 0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC0(r), desc0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC1(r), desc1);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR0(r), addr0);
 cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_CPU_ADDR1(r), addr1);
}
