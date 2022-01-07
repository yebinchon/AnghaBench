
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sd; } ;
struct TYPE_3__ {TYPE_2__ kobj; } ;
struct pci_dev {int bus; TYPE_1__ dev; } ;


 int VIRTFN_ID_LEN ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int pci_iov_virtfn_bus (struct pci_dev*,int) ;
 int pci_iov_virtfn_devfn (struct pci_dev*,int) ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_remove_link (TYPE_2__*,char*) ;
 int virtfn_remove_bus (int ,int ) ;

void pci_iov_remove_virtfn(struct pci_dev *dev, int id)
{
 char buf[VIRTFN_ID_LEN];
 struct pci_dev *virtfn;

 virtfn = pci_get_domain_bus_and_slot(pci_domain_nr(dev->bus),
          pci_iov_virtfn_bus(dev, id),
          pci_iov_virtfn_devfn(dev, id));
 if (!virtfn)
  return;

 sprintf(buf, "virtfn%u", id);
 sysfs_remove_link(&dev->dev.kobj, buf);





 if (virtfn->dev.kobj.sd)
  sysfs_remove_link(&virtfn->dev.kobj, "physfn");

 pci_stop_and_remove_bus_device(virtfn);
 virtfn_remove_bus(dev->bus, virtfn->bus);


 pci_dev_put(virtfn);
 pci_dev_put(dev);
}
