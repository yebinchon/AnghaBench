
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct dw_pcie {int dummy; } ;


 int PCI_CFG_SPACE_EXP_SIZE ;
 int PCI_CFG_SPACE_SIZE ;
 scalar_t__ PCI_EXT_CAP_ID (scalar_t__) ;
 int PCI_EXT_CAP_NEXT (scalar_t__) ;
 scalar_t__ dw_pcie_readl_dbi (struct dw_pcie*,int) ;

__attribute__((used)) static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci, u16 start,
         u8 cap)
{
 u32 header;
 int ttl;
 int pos = PCI_CFG_SPACE_SIZE;


 ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;

 if (start)
  pos = start;

 header = dw_pcie_readl_dbi(pci, pos);




 if (header == 0)
  return 0;

 while (ttl-- > 0) {
  if (PCI_EXT_CAP_ID(header) == cap && pos != start)
   return pos;

  pos = PCI_EXT_CAP_NEXT(header);
  if (pos < PCI_CFG_SPACE_SIZE)
   break;

  header = dw_pcie_readl_dbi(pci, pos);
 }

 return 0;
}
