
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int cfg_size; } ;


 scalar_t__ PCIBIOS_SUCCESSFUL ;
 int PCI_CFG_SPACE_EXP_SIZE ;
 int PCI_CFG_SPACE_SIZE ;
 int PCI_EXT_CAP_ID (scalar_t__) ;
 int PCI_EXT_CAP_NEXT (scalar_t__) ;
 scalar_t__ pci_read_config_dword (struct pci_dev*,int,scalar_t__*) ;

int pci_find_next_ext_capability(struct pci_dev *dev, int start, int cap)
{
 u32 header;
 int ttl;
 int pos = PCI_CFG_SPACE_SIZE;


 ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;

 if (dev->cfg_size <= PCI_CFG_SPACE_SIZE)
  return 0;

 if (start)
  pos = start;

 if (pci_read_config_dword(dev, pos, &header) != PCIBIOS_SUCCESSFUL)
  return 0;





 if (header == 0)
  return 0;

 while (ttl-- > 0) {
  if (PCI_EXT_CAP_ID(header) == cap && pos != start)
   return pos;

  pos = PCI_EXT_CAP_NEXT(header);
  if (pos < PCI_CFG_SPACE_SIZE)
   break;

  if (pci_read_config_dword(dev, pos, &header) != PCIBIOS_SUCCESSFUL)
   break;
 }

 return 0;
}
