
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_device {struct vpci_dev_data* pci_dev_data; } ;
struct vpci_dev_data {int * dev_list; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PCI_SLOT_MAX ;
 struct vpci_dev_data* kmalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int __xen_pcibk_init_devices(struct xen_pcibk_device *pdev)
{
 int slot;
 struct vpci_dev_data *vpci_dev;

 vpci_dev = kmalloc(sizeof(*vpci_dev), GFP_KERNEL);
 if (!vpci_dev)
  return -ENOMEM;

 mutex_init(&vpci_dev->lock);

 for (slot = 0; slot < PCI_SLOT_MAX; slot++)
  INIT_LIST_HEAD(&vpci_dev->dev_list[slot]);

 pdev->pci_dev_data = vpci_dev;

 return 0;
}
