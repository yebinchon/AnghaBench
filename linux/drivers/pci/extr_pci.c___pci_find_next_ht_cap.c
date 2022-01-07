
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; int bus; } ;


 int HT_3BIT_CAP_MASK ;
 int HT_5BIT_CAP_MASK ;
 int HT_CAPTYPE_HOST ;
 int HT_CAPTYPE_SLAVE ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_CAP_ID_HT ;
 int PCI_CAP_LIST_NEXT ;
 int PCI_FIND_CAP_TTL ;
 int __pci_find_next_cap_ttl (int ,int ,int,int ,int*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;

__attribute__((used)) static int __pci_find_next_ht_cap(struct pci_dev *dev, int pos, int ht_cap)
{
 int rc, ttl = PCI_FIND_CAP_TTL;
 u8 cap, mask;

 if (ht_cap == HT_CAPTYPE_SLAVE || ht_cap == HT_CAPTYPE_HOST)
  mask = HT_3BIT_CAP_MASK;
 else
  mask = HT_5BIT_CAP_MASK;

 pos = __pci_find_next_cap_ttl(dev->bus, dev->devfn, pos,
          PCI_CAP_ID_HT, &ttl);
 while (pos) {
  rc = pci_read_config_byte(dev, pos + 3, &cap);
  if (rc != PCIBIOS_SUCCESSFUL)
   return 0;

  if ((cap & mask) == ht_cap)
   return pos;

  pos = __pci_find_next_cap_ttl(dev->bus, dev->devfn,
           pos + PCI_CAP_LIST_NEXT,
           PCI_CAP_ID_HT, &ttl);
 }

 return 0;
}
