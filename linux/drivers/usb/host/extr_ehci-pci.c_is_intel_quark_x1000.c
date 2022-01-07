
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL_QUARK_X1000_SOC ;
 scalar_t__ PCI_VENDOR_ID_INTEL ;

__attribute__((used)) static inline bool is_intel_quark_x1000(struct pci_dev *pdev)
{
 return pdev->vendor == PCI_VENDOR_ID_INTEL &&
  pdev->device == PCI_DEVICE_ID_INTEL_QUARK_X1000_SOC;
}
