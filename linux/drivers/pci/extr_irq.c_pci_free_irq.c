
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int free_irq (int ,void*) ;
 int kfree (int ) ;
 int pci_irq_vector (struct pci_dev*,unsigned int) ;

void pci_free_irq(struct pci_dev *dev, unsigned int nr, void *dev_id)
{
 kfree(free_irq(pci_irq_vector(dev, nr), dev_id));
}
