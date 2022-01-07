
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {scalar_t__ msi_cap; int irq; int msi_enabled; } ;
struct TYPE_2__ {int multiple; int multi_cap; } ;
struct msi_desc {TYPE_1__ msi_attrib; int masked; } ;


 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_ENABLE ;
 int PCI_MSI_FLAGS_QSIZE ;
 int arch_restore_msi_irqs (struct pci_dev*) ;
 struct msi_desc* irq_get_msi_desc (int ) ;
 int msi_mask (int ) ;
 int msi_mask_irq (struct msi_desc*,int ,int ) ;
 int pci_intx_for_msi (struct pci_dev*,int ) ;
 int pci_msi_set_enable (struct pci_dev*,int ) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static void __pci_restore_msi_state(struct pci_dev *dev)
{
 u16 control;
 struct msi_desc *entry;

 if (!dev->msi_enabled)
  return;

 entry = irq_get_msi_desc(dev->irq);

 pci_intx_for_msi(dev, 0);
 pci_msi_set_enable(dev, 0);
 arch_restore_msi_irqs(dev);

 pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
 msi_mask_irq(entry, msi_mask(entry->msi_attrib.multi_cap),
       entry->masked);
 control &= ~PCI_MSI_FLAGS_QSIZE;
 control |= (entry->msi_attrib.multiple << 4) | PCI_MSI_FLAGS_ENABLE;
 pci_write_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, control);
}
