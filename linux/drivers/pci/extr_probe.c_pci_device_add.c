
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int coherent_dma_mask; int * dma_parms; int * dma_mask; int release; } ;
struct pci_dev {int state_saved; int match_driver; TYPE_1__ dev; int bus_list; int dma_parms; int dma_mask; } ;
struct pci_bus {int devices; } ;


 int WARN_ON (int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int dma_set_max_seg_size (TYPE_1__*,int) ;
 int dma_set_seg_boundary (TYPE_1__*,int) ;
 int down_write (int *) ;
 int list_add_tail (int *,int *) ;
 int pci_bus_sem ;
 int pci_configure_device (struct pci_dev*) ;
 int pci_fixup_device (int ,struct pci_dev*) ;
 int pci_fixup_header ;
 int pci_init_capabilities (struct pci_dev*) ;
 int pci_reassigndev_resource_alignment (struct pci_dev*) ;
 int pci_release_dev ;
 int pci_set_msi_domain (struct pci_dev*) ;
 int pcibios_add_device (struct pci_dev*) ;
 int pcibus_to_node (struct pci_bus*) ;
 int set_dev_node (TYPE_1__*,int ) ;
 int up_write (int *) ;

void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
{
 int ret;

 pci_configure_device(dev);

 device_initialize(&dev->dev);
 dev->dev.release = pci_release_dev;

 set_dev_node(&dev->dev, pcibus_to_node(bus));
 dev->dev.dma_mask = &dev->dma_mask;
 dev->dev.dma_parms = &dev->dma_parms;
 dev->dev.coherent_dma_mask = 0xffffffffull;

 dma_set_max_seg_size(&dev->dev, 65536);
 dma_set_seg_boundary(&dev->dev, 0xffffffff);


 pci_fixup_device(pci_fixup_header, dev);


 pci_reassigndev_resource_alignment(dev);


 dev->state_saved = 0;


 pci_init_capabilities(dev);





 down_write(&pci_bus_sem);
 list_add_tail(&dev->bus_list, &bus->devices);
 up_write(&pci_bus_sem);

 ret = pcibios_add_device(dev);
 WARN_ON(ret < 0);


 pci_set_msi_domain(dev);


 dev->match_driver = 0;
 ret = device_add(&dev->dev);
 WARN_ON(ret < 0);
}
