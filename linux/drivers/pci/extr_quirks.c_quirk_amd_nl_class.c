
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int class; } ;


 int PCI_CLASS_SERIAL_USB_DEVICE ;
 int pci_info (struct pci_dev*,char*,int ,int ) ;

__attribute__((used)) static void quirk_amd_nl_class(struct pci_dev *pdev)
{
 u32 class = pdev->class;


 pdev->class = PCI_CLASS_SERIAL_USB_DEVICE;
 pci_info(pdev, "PCI class overridden (%#08x -> %#08x) so dwc3 driver can claim this instead of xhci\n",
   class, pdev->class);
}
