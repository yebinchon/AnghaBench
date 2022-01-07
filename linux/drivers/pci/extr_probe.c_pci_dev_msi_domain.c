
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct irq_domain {int dummy; } ;


 struct irq_domain* dev_get_msi_domain (int *) ;
 struct irq_domain* pci_msi_get_device_domain (struct pci_dev*) ;

__attribute__((used)) static struct irq_domain *pci_dev_msi_domain(struct pci_dev *dev)
{
 struct irq_domain *d;





 d = dev_get_msi_domain(&dev->dev);
 if (d)
  return d;





 d = pci_msi_get_device_domain(dev);
 if (d)
  return d;

 return ((void*)0);
}
