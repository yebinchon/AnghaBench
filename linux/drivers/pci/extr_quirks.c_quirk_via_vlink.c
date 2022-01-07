
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int irq; int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ number; } ;


 int PCI_INTERRUPT_LINE ;
 int PCI_SLOT (int ) ;
 int pci_info (struct pci_dev*,char*,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int udelay (int) ;
 int via_vlink_dev_hi ;
 int via_vlink_dev_lo ;

__attribute__((used)) static void quirk_via_vlink(struct pci_dev *dev)
{
 u8 irq, new_irq;


 if (via_vlink_dev_lo == -1)
  return;

 new_irq = dev->irq;


 if (!new_irq || new_irq > 15)
  return;


 if (dev->bus->number != 0 || PCI_SLOT(dev->devfn) > via_vlink_dev_hi ||
     PCI_SLOT(dev->devfn) < via_vlink_dev_lo)
  return;





 pci_read_config_byte(dev, PCI_INTERRUPT_LINE, &irq);
 if (new_irq != irq) {
  pci_info(dev, "VIA VLink IRQ fixup, from %d to %d\n",
   irq, new_irq);
  udelay(15);
  pci_write_config_byte(dev, PCI_INTERRUPT_LINE, new_irq);
 }
}
