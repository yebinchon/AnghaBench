
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int dev_flags; } ;


 int ENOTTY ;
 int INTEL_PCH_ACS_FLAGS ;
 int PCI_DEV_FLAGS_ACS_ENABLED_QUIRK ;
 int pci_quirk_intel_pch_acs_match (struct pci_dev*) ;

__attribute__((used)) static int pci_quirk_intel_pch_acs(struct pci_dev *dev, u16 acs_flags)
{
 u16 flags = dev->dev_flags & PCI_DEV_FLAGS_ACS_ENABLED_QUIRK ?
      INTEL_PCH_ACS_FLAGS : 0;

 if (!pci_quirk_intel_pch_acs_match(dev))
  return -ENOTTY;

 return acs_flags & ~flags ? 0 : 1;
}
