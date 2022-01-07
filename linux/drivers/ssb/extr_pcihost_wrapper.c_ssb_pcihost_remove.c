
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int dummy; } ;
struct pci_dev {int dummy; } ;


 int kfree (struct ssb_bus*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ssb_bus* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int ssb_bus_unregister (struct ssb_bus*) ;

__attribute__((used)) static void ssb_pcihost_remove(struct pci_dev *dev)
{
 struct ssb_bus *ssb = pci_get_drvdata(dev);

 ssb_bus_unregister(ssb);
 pci_release_regions(dev);
 pci_disable_device(dev);
 kfree(ssb);
 pci_set_drvdata(dev, ((void*)0));
}
