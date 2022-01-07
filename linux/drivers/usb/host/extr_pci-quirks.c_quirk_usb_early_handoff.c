
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int vendor; scalar_t__ class; int dev; } ;


 scalar_t__ PCI_CLASS_SERIAL_USB_EHCI ;
 scalar_t__ PCI_CLASS_SERIAL_USB_OHCI ;
 scalar_t__ PCI_CLASS_SERIAL_USB_UHCI ;
 scalar_t__ PCI_CLASS_SERIAL_USB_XHCI ;
 int dev_warn (int *,char*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int quirk_usb_disable_ehci (struct pci_dev*) ;
 int quirk_usb_handoff_ohci (struct pci_dev*) ;
 int quirk_usb_handoff_uhci (struct pci_dev*) ;
 int quirk_usb_handoff_xhci (struct pci_dev*) ;

__attribute__((used)) static void quirk_usb_early_handoff(struct pci_dev *pdev)
{



 if (pdev->vendor == 0x184e)
  return;
 if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
   pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
   pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
   pdev->class != PCI_CLASS_SERIAL_USB_XHCI)
  return;

 if (pci_enable_device(pdev) < 0) {
  dev_warn(&pdev->dev,
    "Can't enable PCI device, BIOS handoff failed.\n");
  return;
 }
 if (pdev->class == PCI_CLASS_SERIAL_USB_UHCI)
  quirk_usb_handoff_uhci(pdev);
 else if (pdev->class == PCI_CLASS_SERIAL_USB_OHCI)
  quirk_usb_handoff_ohci(pdev);
 else if (pdev->class == PCI_CLASS_SERIAL_USB_EHCI)
  quirk_usb_disable_ehci(pdev);
 else if (pdev->class == PCI_CLASS_SERIAL_USB_XHCI)
  quirk_usb_handoff_xhci(pdev);
 pci_disable_device(pdev);
}
