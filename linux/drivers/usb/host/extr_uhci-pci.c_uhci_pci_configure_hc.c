
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int dummy; } ;
struct pci_dev {scalar_t__ vendor; } ;


 scalar_t__ PCI_VENDOR_ID_INTEL ;
 int USBLEGSUP ;
 int USBLEGSUP_DEFAULT ;
 int USBRES_INTEL ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_pci_configure_hc(struct uhci_hcd *uhci)
{
 struct pci_dev *pdev = to_pci_dev(uhci_dev(uhci));


 pci_write_config_word(pdev, USBLEGSUP, USBLEGSUP_DEFAULT);


 if (pdev->vendor == PCI_VENDOR_ID_INTEL)
  pci_write_config_byte(pdev, USBRES_INTEL, 0);
}
