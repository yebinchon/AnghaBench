
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coreid; } ;
struct ssb_device {int core_index; TYPE_1__ id; } ;
struct ssb_bus {int bar_lock; struct ssb_device* mapped_device; } ;


 int pr_info (char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ssb_core_name (int ) ;
 int ssb_pci_switch_coreidx (struct ssb_bus*,int ) ;

int ssb_pci_switch_core(struct ssb_bus *bus,
   struct ssb_device *dev)
{
 int err;
 unsigned long flags;






 spin_lock_irqsave(&bus->bar_lock, flags);
 err = ssb_pci_switch_coreidx(bus, dev->core_index);
 if (!err)
  bus->mapped_device = dev;
 spin_unlock_irqrestore(&bus->bar_lock, flags);

 return err;
}
