
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct dwc3_haps {int dwc3; } ;


 struct dwc3_haps* pci_get_drvdata (struct pci_dev*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void dwc3_haps_remove(struct pci_dev *pci)
{
 struct dwc3_haps *dwc = pci_get_drvdata(pci);

 platform_device_unregister(dwc->dwc3);
}
