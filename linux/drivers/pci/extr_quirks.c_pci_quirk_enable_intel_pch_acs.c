
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev_flags; } ;


 int ENOTTY ;
 int PCI_DEV_FLAGS_ACS_ENABLED_QUIRK ;
 int pci_info (struct pci_dev*,char*) ;
 scalar_t__ pci_quirk_enable_intel_lpc_acs (struct pci_dev*) ;
 int pci_quirk_enable_intel_rp_mpc_acs (struct pci_dev*) ;
 int pci_quirk_intel_pch_acs_match (struct pci_dev*) ;
 int pci_warn (struct pci_dev*,char*) ;

__attribute__((used)) static int pci_quirk_enable_intel_pch_acs(struct pci_dev *dev)
{
 if (!pci_quirk_intel_pch_acs_match(dev))
  return -ENOTTY;

 if (pci_quirk_enable_intel_lpc_acs(dev)) {
  pci_warn(dev, "Failed to enable Intel PCH ACS quirk\n");
  return 0;
 }

 pci_quirk_enable_intel_rp_mpc_acs(dev);

 dev->dev_flags |= PCI_DEV_FLAGS_ACS_ENABLED_QUIRK;

 pci_info(dev, "Intel PCH root port ACS workaround enabled\n");

 return 0;
}
