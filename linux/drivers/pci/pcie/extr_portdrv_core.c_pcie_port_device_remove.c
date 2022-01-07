
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int remove_iter ;

void pcie_port_device_remove(struct pci_dev *dev)
{
 device_for_each_child(&dev->dev, ((void*)0), remove_iter);
 pci_free_irq_vectors(dev);
 pci_disable_device(dev);
}
