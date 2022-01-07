
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int current_state; int enable_cnt; TYPE_1__* resource; scalar_t__ pm_cap; } ;
struct TYPE_2__ {unsigned long flags; } ;


 int DEVICE_COUNT_RESOURCE ;
 int PCI_BRIDGE_RESOURCES ;
 scalar_t__ PCI_PM_CTRL ;
 int PCI_PM_CTRL_STATE_MASK ;
 int PCI_ROM_RESOURCE ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int do_pci_enable_device (struct pci_dev*,int) ;
 int pci_enable_bridge (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;

__attribute__((used)) static int pci_enable_device_flags(struct pci_dev *dev, unsigned long flags)
{
 struct pci_dev *bridge;
 int err;
 int i, bars = 0;







 if (dev->pm_cap) {
  u16 pmcsr;
  pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
  dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
 }

 if (atomic_inc_return(&dev->enable_cnt) > 1)
  return 0;

 bridge = pci_upstream_bridge(dev);
 if (bridge)
  pci_enable_bridge(bridge);


 for (i = 0; i <= PCI_ROM_RESOURCE; i++)
  if (dev->resource[i].flags & flags)
   bars |= (1 << i);
 for (i = PCI_BRIDGE_RESOURCES; i < DEVICE_COUNT_RESOURCE; i++)
  if (dev->resource[i].flags & flags)
   bars |= (1 << i);

 err = do_pci_enable_device(dev, bars);
 if (err < 0)
  atomic_dec(&dev->enable_cnt);
 return err;
}
