
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;


 int PCI_CFG_SPACE_SIZE ;
 int PCI_EXT_CAP_ID (int ) ;
 int PCI_EXT_CAP_NEXT (int ) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int) ;

__attribute__((used)) static unsigned int dw_pcie_ep_find_ext_capability(struct dw_pcie *pci, int cap)
{
 u32 header;
 int pos = PCI_CFG_SPACE_SIZE;

 while (pos) {
  header = dw_pcie_readl_dbi(pci, pos);
  if (PCI_EXT_CAP_ID(header) == cap)
   return pos;

  pos = PCI_EXT_CAP_NEXT(header);
  if (!pos)
   break;
 }

 return 0;
}
