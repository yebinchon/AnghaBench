
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dwc2_pci_glue {int phy; int dwc2; } ;


 struct dwc2_pci_glue* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int platform_device_unregister (int ) ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static void dwc2_pci_remove(struct pci_dev *pci)
{
 struct dwc2_pci_glue *glue = pci_get_drvdata(pci);

 platform_device_unregister(glue->dwc2);
 usb_phy_generic_unregister(glue->phy);
 pci_set_drvdata(pci, ((void*)0));
}
