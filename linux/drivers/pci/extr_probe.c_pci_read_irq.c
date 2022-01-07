
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {unsigned char pin; unsigned char irq; scalar_t__ is_virtfn; } ;


 int PCI_INTERRUPT_LINE ;
 int PCI_INTERRUPT_PIN ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;

__attribute__((used)) static void pci_read_irq(struct pci_dev *dev)
{
 unsigned char irq;


 if (dev->is_virtfn) {
  dev->pin = 0;
  dev->irq = 0;
  return;
 }

 pci_read_config_byte(dev, PCI_INTERRUPT_PIN, &irq);
 dev->pin = irq;
 if (irq)
  pci_read_config_byte(dev, PCI_INTERRUPT_LINE, &irq);
 dev->irq = irq;
}
