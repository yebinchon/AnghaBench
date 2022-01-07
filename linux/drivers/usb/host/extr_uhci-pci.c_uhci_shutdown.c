
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct pci_dev {int dummy; } ;


 int hcd_to_uhci (struct usb_hcd*) ;
 struct usb_hcd* pci_get_drvdata (struct pci_dev*) ;
 int uhci_hc_died (int ) ;

__attribute__((used)) static void uhci_shutdown(struct pci_dev *pdev)
{
 struct usb_hcd *hcd = pci_get_drvdata(pdev);

 uhci_hc_died(hcd_to_uhci(hcd));
}
