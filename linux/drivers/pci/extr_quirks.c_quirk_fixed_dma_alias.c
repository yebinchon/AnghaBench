
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int fixed_dma_alias_tbl ;
 int pci_add_dma_alias (struct pci_dev*,int ) ;
 struct pci_device_id* pci_match_id (int ,struct pci_dev*) ;

__attribute__((used)) static void quirk_fixed_dma_alias(struct pci_dev *dev)
{
 const struct pci_device_id *id;

 id = pci_match_id(fixed_dma_alias_tbl, dev);
 if (id)
  pci_add_dma_alias(dev, id->driver_data);
}
