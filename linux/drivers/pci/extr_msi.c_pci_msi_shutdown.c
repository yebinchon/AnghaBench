
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int irq; scalar_t__ msi_enabled; int dev; } ;
struct TYPE_2__ {int default_irq; int multi_cap; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;


 int BUG_ON (int ) ;
 int __pci_msi_desc_mask_irq (struct msi_desc*,int ,int ) ;
 int dev_to_msi_list (int *) ;
 struct msi_desc* first_pci_msi_entry (struct pci_dev*) ;
 int list_empty (int ) ;
 int msi_mask (int ) ;
 int pci_intx_for_msi (struct pci_dev*,int) ;
 int pci_msi_enable ;
 int pci_msi_set_enable (struct pci_dev*,int ) ;
 int pcibios_alloc_irq (struct pci_dev*) ;

__attribute__((used)) static void pci_msi_shutdown(struct pci_dev *dev)
{
 struct msi_desc *desc;
 u32 mask;

 if (!pci_msi_enable || !dev || !dev->msi_enabled)
  return;

 BUG_ON(list_empty(dev_to_msi_list(&dev->dev)));
 desc = first_pci_msi_entry(dev);

 pci_msi_set_enable(dev, 0);
 pci_intx_for_msi(dev, 1);
 dev->msi_enabled = 0;


 mask = msi_mask(desc->msi_attrib.multi_cap);

 __pci_msi_desc_mask_irq(desc, mask, ~mask);


 dev->irq = desc->msi_attrib.default_irq;
 pcibios_alloc_irq(dev);
}
