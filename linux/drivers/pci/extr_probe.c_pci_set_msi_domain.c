
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; TYPE_1__* bus; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct irq_domain* dev_get_msi_domain (int *) ;
 int dev_set_msi_domain (int *,struct irq_domain*) ;
 struct irq_domain* pci_dev_msi_domain (struct pci_dev*) ;

__attribute__((used)) static void pci_set_msi_domain(struct pci_dev *dev)
{
 struct irq_domain *d;






 d = pci_dev_msi_domain(dev);
 if (!d)
  d = dev_get_msi_domain(&dev->bus->dev);

 dev_set_msi_domain(&dev->dev, d);
}
