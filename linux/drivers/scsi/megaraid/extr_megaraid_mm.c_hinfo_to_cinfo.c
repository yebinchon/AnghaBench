
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int unique_id; int pci_slot; int pci_vendor_id; int pci_device_id; int pci_dev_fn; int pci_bus; int num_ldrv; int irq; int baseport; } ;
typedef TYPE_1__ mraid_hba_info_t ;
struct TYPE_6__ {int uid; int pcislot; int pcivendor; int pciid; int pcifun; int pcidev; int pcibus; int numldrv; int irq; int base; } ;
typedef TYPE_2__ mcontroller_t ;


 int PCI_FUNC (int ) ;

__attribute__((used)) static void
hinfo_to_cinfo(mraid_hba_info_t *hinfo, mcontroller_t *cinfo)
{
 if (!hinfo || !cinfo)
  return;

 cinfo->base = hinfo->baseport;
 cinfo->irq = hinfo->irq;
 cinfo->numldrv = hinfo->num_ldrv;
 cinfo->pcibus = hinfo->pci_bus;
 cinfo->pcidev = hinfo->pci_slot;
 cinfo->pcifun = PCI_FUNC(hinfo->pci_dev_fn);
 cinfo->pciid = hinfo->pci_device_id;
 cinfo->pcivendor = hinfo->pci_vendor_id;
 cinfo->pcislot = hinfo->pci_slot;
 cinfo->uid = hinfo->unique_id;
}
