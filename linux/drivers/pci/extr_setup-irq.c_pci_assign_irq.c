
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_host_bridge {int (* map_irq ) (struct pci_dev*,int,int) ;int (* swizzle_irq ) (struct pci_dev*,int*) ;} ;
struct pci_dev {int irq; int bus; } ;


 int PCI_INTERRUPT_LINE ;
 int PCI_INTERRUPT_PIN ;
 int pci_dbg (struct pci_dev*,char*,...) ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int stub1 (struct pci_dev*,int*) ;
 int stub2 (struct pci_dev*,int,int) ;

void pci_assign_irq(struct pci_dev *dev)
{
 u8 pin;
 u8 slot = -1;
 int irq = 0;
 struct pci_host_bridge *hbrg = pci_find_host_bridge(dev->bus);

 if (!(hbrg->map_irq)) {
  pci_dbg(dev, "runtime IRQ mapping not provided by arch\n");
  return;
 }







 pci_read_config_byte(dev, PCI_INTERRUPT_PIN, &pin);

 if (pin > 4)
  pin = 1;

 if (pin) {

  if (hbrg->swizzle_irq)
   slot = (*(hbrg->swizzle_irq))(dev, &pin);





  irq = (*(hbrg->map_irq))(dev, slot, pin);
  if (irq == -1)
   irq = 0;
 }
 dev->irq = irq;

 pci_dbg(dev, "assign IRQ: got %d\n", dev->irq);



 pci_write_config_byte(dev, PCI_INTERRUPT_LINE, irq);
}
