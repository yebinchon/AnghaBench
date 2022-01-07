
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int hdr_type; int devfn; int bus; } ;


 int __pci_bus_find_cap_start (int ,int ,int ) ;
 int __pci_find_next_ht_cap (struct pci_dev*,int,int) ;

int pci_find_ht_capability(struct pci_dev *dev, int ht_cap)
{
 int pos;

 pos = __pci_bus_find_cap_start(dev->bus, dev->devfn, dev->hdr_type);
 if (pos)
  pos = __pci_find_next_ht_cap(dev, pos, ht_cap);

 return pos;
}
