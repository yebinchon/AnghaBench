
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct ism_dev {int smcd; } ;


 struct ism_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int ism_dev_exit (struct ism_dev*) ;
 int kfree (struct ism_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int smcd_free_dev (int ) ;

__attribute__((used)) static void ism_remove(struct pci_dev *pdev)
{
 struct ism_dev *ism = dev_get_drvdata(&pdev->dev);

 ism_dev_exit(ism);

 smcd_free_dev(ism->smcd);
 pci_release_mem_regions(pdev);
 pci_disable_device(pdev);
 dev_set_drvdata(&pdev->dev, ((void*)0));
 kfree(ism);
}
