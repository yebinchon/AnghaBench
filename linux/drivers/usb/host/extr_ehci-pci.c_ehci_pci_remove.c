
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_clear_mwi (struct pci_dev*) ;
 int usb_hcd_pci_remove (struct pci_dev*) ;

__attribute__((used)) static void ehci_pci_remove(struct pci_dev *pdev)
{
 pci_clear_mwi(pdev);
 usb_hcd_pci_remove(pdev);
}
