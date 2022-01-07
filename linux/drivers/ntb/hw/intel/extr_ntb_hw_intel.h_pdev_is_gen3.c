
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL_NTB_B2B_SKX ;

__attribute__((used)) static inline int pdev_is_gen3(struct pci_dev *pdev)
{
 if (pdev->device == PCI_DEVICE_ID_INTEL_NTB_B2B_SKX)
  return 1;

 return 0;
}
