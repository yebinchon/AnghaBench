
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long driver_data; scalar_t__ class_mask; scalar_t__ class; int subdevice; int subvendor; int device; int vendor; } ;
struct xen_pcibk_config_quirk {struct pci_dev* pdev; TYPE_1__ devid; } ;
struct pci_dev {int subsystem_device; int subsystem_vendor; int device; int vendor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct xen_pcibk_config_quirk* kzalloc (int,int ) ;
 int register_quirk (struct xen_pcibk_config_quirk*) ;

int xen_pcibk_config_quirks_init(struct pci_dev *dev)
{
 struct xen_pcibk_config_quirk *quirk;
 int ret = 0;

 quirk = kzalloc(sizeof(*quirk), GFP_KERNEL);
 if (!quirk) {
  ret = -ENOMEM;
  goto out;
 }

 quirk->devid.vendor = dev->vendor;
 quirk->devid.device = dev->device;
 quirk->devid.subvendor = dev->subsystem_vendor;
 quirk->devid.subdevice = dev->subsystem_device;
 quirk->devid.class = 0;
 quirk->devid.class_mask = 0;
 quirk->devid.driver_data = 0UL;

 quirk->pdev = dev;

 register_quirk(quirk);
out:
 return ret;
}
