
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ci_hdrc_pci {int phy; int ci; } ;


 int ci_hdrc_remove_device (int ) ;
 struct ci_hdrc_pci* pci_get_drvdata (struct pci_dev*) ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static void ci_hdrc_pci_remove(struct pci_dev *pdev)
{
 struct ci_hdrc_pci *ci = pci_get_drvdata(pdev);

 ci_hdrc_remove_device(ci->ci);
 usb_phy_generic_unregister(ci->phy);
}
