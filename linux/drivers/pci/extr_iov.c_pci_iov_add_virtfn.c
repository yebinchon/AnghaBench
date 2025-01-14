
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct resource {scalar_t__ start; scalar_t__ end; int flags; int name; int parent; } ;
struct pci_sriov {int vf_device; } ;
struct TYPE_2__ {int kobj; int parent; } ;
struct pci_dev {int is_virtfn; int bus; TYPE_1__ dev; struct resource* resource; scalar_t__ multifunction; int physfn; int device; int vendor; int devfn; struct pci_sriov* sriov; } ;
struct pci_bus {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int KOBJ_CHANGE ;
 int PCI_IOV_RESOURCES ;
 int PCI_SRIOV_NUM_BARS ;
 int VIRTFN_ID_LEN ;
 int kobject_uevent (int *,int ) ;
 struct pci_dev* pci_alloc_dev (struct pci_bus*) ;
 int pci_bus_add_device (struct pci_dev*) ;
 int pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_device_add (struct pci_dev*,int ) ;
 int pci_iov_resource_size (struct pci_dev*,int) ;
 int pci_iov_virtfn_bus (struct pci_dev*,int) ;
 int pci_iov_virtfn_devfn (struct pci_dev*,int) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_vf_config_common (struct pci_dev*) ;
 int pci_setup_device (struct pci_dev*) ;
 int pci_stop_and_remove_bus_device (struct pci_dev*) ;
 int request_resource (struct resource*,struct resource*) ;
 int sprintf (char*,char*,int) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;
 struct pci_bus* virtfn_add_bus (int ,int ) ;
 int virtfn_remove_bus (int ,struct pci_bus*) ;

int pci_iov_add_virtfn(struct pci_dev *dev, int id)
{
 int i;
 int rc = -ENOMEM;
 u64 size;
 char buf[VIRTFN_ID_LEN];
 struct pci_dev *virtfn;
 struct resource *res;
 struct pci_sriov *iov = dev->sriov;
 struct pci_bus *bus;

 bus = virtfn_add_bus(dev->bus, pci_iov_virtfn_bus(dev, id));
 if (!bus)
  goto failed;

 virtfn = pci_alloc_dev(bus);
 if (!virtfn)
  goto failed0;

 virtfn->devfn = pci_iov_virtfn_devfn(dev, id);
 virtfn->vendor = dev->vendor;
 virtfn->device = iov->vf_device;
 virtfn->is_virtfn = 1;
 virtfn->physfn = pci_dev_get(dev);

 if (id == 0)
  pci_read_vf_config_common(virtfn);

 rc = pci_setup_device(virtfn);
 if (rc)
  goto failed1;

 virtfn->dev.parent = dev->dev.parent;
 virtfn->multifunction = 0;

 for (i = 0; i < PCI_SRIOV_NUM_BARS; i++) {
  res = &dev->resource[i + PCI_IOV_RESOURCES];
  if (!res->parent)
   continue;
  virtfn->resource[i].name = pci_name(virtfn);
  virtfn->resource[i].flags = res->flags;
  size = pci_iov_resource_size(dev, i + PCI_IOV_RESOURCES);
  virtfn->resource[i].start = res->start + size * id;
  virtfn->resource[i].end = virtfn->resource[i].start + size - 1;
  rc = request_resource(res, &virtfn->resource[i]);
  BUG_ON(rc);
 }

 pci_device_add(virtfn, virtfn->bus);

 sprintf(buf, "virtfn%u", id);
 rc = sysfs_create_link(&dev->dev.kobj, &virtfn->dev.kobj, buf);
 if (rc)
  goto failed2;
 rc = sysfs_create_link(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
 if (rc)
  goto failed3;

 kobject_uevent(&virtfn->dev.kobj, KOBJ_CHANGE);

 pci_bus_add_device(virtfn);

 return 0;

failed3:
 sysfs_remove_link(&dev->dev.kobj, buf);
failed2:
 pci_stop_and_remove_bus_device(virtfn);
failed1:
 pci_dev_put(dev);
failed0:
 virtfn_remove_bus(dev->bus, bus);
failed:

 return rc;
}
