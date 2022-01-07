
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_pci_generic_dev {int info; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct uio_pci_generic_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct uio_pci_generic_dev* pci_get_drvdata (struct pci_dev*) ;
 int uio_unregister_device (int *) ;

__attribute__((used)) static void remove(struct pci_dev *pdev)
{
 struct uio_pci_generic_dev *gdev = pci_get_drvdata(pdev);

 uio_unregister_device(&gdev->info);
 pci_disable_device(pdev);
 kfree(gdev);
}
