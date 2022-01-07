
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_pcibk_device {struct passthrough_dev_data* pci_dev_data; } ;
struct pci_dev_entry {int list; struct pci_dev* dev; } ;
struct pci_dev {unsigned int devfn; TYPE_1__* bus; } ;
struct passthrough_dev_data {int lock; int dev_list; } ;
typedef int (* publish_pci_dev_cb ) (struct xen_pcibk_device*,unsigned int,unsigned int,unsigned int,int) ;
struct TYPE_2__ {scalar_t__ number; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pci_dev_entry* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static int __xen_pcibk_add_pci_dev(struct xen_pcibk_device *pdev,
       struct pci_dev *dev,
       int devid, publish_pci_dev_cb publish_cb)
{
 struct passthrough_dev_data *dev_data = pdev->pci_dev_data;
 struct pci_dev_entry *dev_entry;
 unsigned int domain, bus, devfn;
 int err;

 dev_entry = kmalloc(sizeof(*dev_entry), GFP_KERNEL);
 if (!dev_entry)
  return -ENOMEM;
 dev_entry->dev = dev;

 mutex_lock(&dev_data->lock);
 list_add_tail(&dev_entry->list, &dev_data->dev_list);
 mutex_unlock(&dev_data->lock);


 domain = (unsigned int)pci_domain_nr(dev->bus);
 bus = (unsigned int)dev->bus->number;
 devfn = dev->devfn;
 err = publish_cb(pdev, domain, bus, devfn, devid);

 return err;
}
