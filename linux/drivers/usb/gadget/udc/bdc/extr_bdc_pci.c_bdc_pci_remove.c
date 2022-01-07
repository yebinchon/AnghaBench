
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bdc_pci {int bdc; } ;


 int pci_disable_msi (struct pci_dev*) ;
 struct bdc_pci* pci_get_drvdata (struct pci_dev*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void bdc_pci_remove(struct pci_dev *pci)
{
 struct bdc_pci *glue = pci_get_drvdata(pci);

 platform_device_unregister(glue->bdc);
 pci_disable_msi(pci);
}
