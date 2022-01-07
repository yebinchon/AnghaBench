
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {scalar_t__ ats_cap; scalar_t__ is_virtfn; } ;


 int EINVAL ;
 scalar_t__ PCI_ATS_CAP ;
 int PCI_ATS_CAP_QDEP (int ) ;
 int PCI_ATS_MAX_QDEP ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;

int pci_ats_queue_depth(struct pci_dev *dev)
{
 u16 cap;

 if (!dev->ats_cap)
  return -EINVAL;

 if (dev->is_virtfn)
  return 0;

 pci_read_config_word(dev, dev->ats_cap + PCI_ATS_CAP, &cap);
 return PCI_ATS_CAP_QDEP(cap) ? PCI_ATS_CAP_QDEP(cap) : PCI_ATS_MAX_QDEP;
}
