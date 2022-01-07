
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int class; } ;


 int PCI_CLASS_DISPLAY_VGA ;

__attribute__((used)) static inline bool vfio_pci_is_vga(struct pci_dev *pdev)
{
 return (pdev->class >> 8) == PCI_CLASS_DISPLAY_VGA;
}
