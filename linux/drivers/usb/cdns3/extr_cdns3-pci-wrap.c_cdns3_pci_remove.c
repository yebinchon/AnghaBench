
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ devfn; } ;
struct cdns3_wrap {scalar_t__ devfn; int plat_dev; } ;


 struct pci_dev* cdns3_get_second_fun (struct pci_dev*) ;
 int kfree (struct cdns3_wrap*) ;
 scalar_t__ pci_get_drvdata (struct pci_dev*) ;
 int pci_is_enabled (struct pci_dev*) ;
 int platform_device_unregister (int ) ;

__attribute__((used)) static void cdns3_pci_remove(struct pci_dev *pdev)
{
 struct cdns3_wrap *wrap;
 struct pci_dev *func;

 func = cdns3_get_second_fun(pdev);

 wrap = (struct cdns3_wrap *)pci_get_drvdata(pdev);
 if (wrap->devfn == pdev->devfn)
  platform_device_unregister(wrap->plat_dev);

 if (!pci_is_enabled(func))
  kfree(wrap);
}
