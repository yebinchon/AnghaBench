
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ device; int dev; } ;
struct dwc3_pci {int dwc3; int wakeup_work; struct pci_dev* pci; } ;


 scalar_t__ PCI_DEVICE_ID_INTEL_BYT ;
 int cancel_work_sync (int *) ;
 int device_init_wakeup (int *,int) ;
 int gpiod_remove_lookup_table (int *) ;
 struct dwc3_pci* pci_get_drvdata (struct pci_dev*) ;
 int platform_bytcr_gpios ;
 int platform_device_unregister (int ) ;
 int pm_runtime_get (int *) ;

__attribute__((used)) static void dwc3_pci_remove(struct pci_dev *pci)
{
 struct dwc3_pci *dwc = pci_get_drvdata(pci);
 struct pci_dev *pdev = dwc->pci;

 if (pdev->device == PCI_DEVICE_ID_INTEL_BYT)
  gpiod_remove_lookup_table(&platform_bytcr_gpios);



 device_init_wakeup(&pci->dev, 0);
 pm_runtime_get(&pci->dev);
 platform_device_unregister(dwc->dwc3);
}
