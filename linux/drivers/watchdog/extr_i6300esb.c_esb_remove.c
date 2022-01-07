
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct esb_dev {int pdev; int base; int wdd; } ;


 struct esb_dev* dev_get_drvdata (int *) ;
 int iounmap (int ) ;
 int pci_disable_device (int ) ;
 int pci_release_region (int ,int ) ;
 int watchdog_unregister_device (int *) ;

__attribute__((used)) static void esb_remove(struct pci_dev *pdev)
{
 struct esb_dev *edev = dev_get_drvdata(&pdev->dev);

 watchdog_unregister_device(&edev->wdd);
 iounmap(edev->base);
 pci_release_region(edev->pdev, 0);
 pci_disable_device(edev->pdev);
}
