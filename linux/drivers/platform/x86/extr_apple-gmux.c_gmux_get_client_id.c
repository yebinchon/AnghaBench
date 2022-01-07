
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ vendor; int device; } ;
typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 scalar_t__ PCI_VENDOR_ID_NVIDIA ;
 int VGA_SWITCHEROO_DIS ;
 int VGA_SWITCHEROO_IGD ;

__attribute__((used)) static enum vga_switcheroo_client_id gmux_get_client_id(struct pci_dev *pdev)
{




 if (pdev->vendor == PCI_VENDOR_ID_INTEL)
  return VGA_SWITCHEROO_IGD;
 else if (pdev->vendor == PCI_VENDOR_ID_NVIDIA &&
   pdev->device == 0x0863)
  return VGA_SWITCHEROO_IGD;
 else
  return VGA_SWITCHEROO_DIS;
}
