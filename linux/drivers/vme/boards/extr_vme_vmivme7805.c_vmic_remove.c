
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int iounmap (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int vmic_base ;

__attribute__((used)) static void vmic_remove(struct pci_dev *pdev)
{
 iounmap(vmic_base);
 pci_release_regions(pdev);
 pci_disable_device(pdev);

}
