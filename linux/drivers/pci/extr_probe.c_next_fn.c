
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ multifunction; } ;
struct pci_bus {int dummy; } ;


 scalar_t__ PCI_ARI_CAP ;
 unsigned int PCI_ARI_CAP_NFN (int ) ;
 int PCI_EXT_CAP_ID_ARI ;
 scalar_t__ pci_ari_enabled (struct pci_bus*) ;
 int pci_find_ext_capability (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

__attribute__((used)) static unsigned next_fn(struct pci_bus *bus, struct pci_dev *dev, unsigned fn)
{
 int pos;
 u16 cap = 0;
 unsigned next_fn;

 if (pci_ari_enabled(bus)) {
  if (!dev)
   return 0;
  pos = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ARI);
  if (!pos)
   return 0;

  pci_read_config_word(dev, pos + PCI_ARI_CAP, &cap);
  next_fn = PCI_ARI_CAP_NFN(cap);
  if (next_fn <= fn)
   return 0;

  return next_fn;
 }


 if (!dev || dev->multifunction)
  return (fn + 1) % 8;

 return 0;
}
