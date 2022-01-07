
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ probe_count; scalar_t__ need_pll_quirk; scalar_t__ isoc_reqs; int sb_type; scalar_t__ nb_type; struct pci_dev* smbus_dev; struct pci_dev* nb_dev; } ;


 TYPE_1__ amd_chipset ;
 int amd_lock ;
 int memset (int *,int ,int) ;
 int pci_dev_put (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void usb_amd_dev_put(void)
{
 struct pci_dev *nb, *smbus;
 unsigned long flags;

 spin_lock_irqsave(&amd_lock, flags);

 amd_chipset.probe_count--;
 if (amd_chipset.probe_count > 0) {
  spin_unlock_irqrestore(&amd_lock, flags);
  return;
 }


 nb = amd_chipset.nb_dev;
 smbus = amd_chipset.smbus_dev;

 amd_chipset.nb_dev = ((void*)0);
 amd_chipset.smbus_dev = ((void*)0);
 amd_chipset.nb_type = 0;
 memset(&amd_chipset.sb_type, 0, sizeof(amd_chipset.sb_type));
 amd_chipset.isoc_reqs = 0;
 amd_chipset.need_pll_quirk = 0;

 spin_unlock_irqrestore(&amd_lock, flags);

 pci_dev_put(nb);
 pci_dev_put(smbus);
}
