
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {int devfn; struct pci_bus* bus; } ;
struct pci_bus {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct pci_bus*,int ,int,int,int) ;int (* read ) (struct pci_bus*,int ,int,int,int*) ;} ;


 int BUILD_BUG_ON (int) ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int PCI_STATUS ;
 int PCI_STATUS_INTERRUPT ;
 int pci_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct pci_bus*,int ,int,int,int*) ;
 int stub2 (struct pci_bus*,int ,int,int,int) ;

__attribute__((used)) static bool pci_check_and_set_intx_mask(struct pci_dev *dev, bool mask)
{
 struct pci_bus *bus = dev->bus;
 bool mask_updated = 1;
 u32 cmd_status_dword;
 u16 origcmd, newcmd;
 unsigned long flags;
 bool irq_pending;





 BUILD_BUG_ON(PCI_COMMAND % 4);
 BUILD_BUG_ON(PCI_COMMAND + 2 != PCI_STATUS);

 raw_spin_lock_irqsave(&pci_lock, flags);

 bus->ops->read(bus, dev->devfn, PCI_COMMAND, 4, &cmd_status_dword);

 irq_pending = (cmd_status_dword >> 16) & PCI_STATUS_INTERRUPT;






 if (mask != irq_pending) {
  mask_updated = 0;
  goto done;
 }

 origcmd = cmd_status_dword;
 newcmd = origcmd & ~PCI_COMMAND_INTX_DISABLE;
 if (mask)
  newcmd |= PCI_COMMAND_INTX_DISABLE;
 if (newcmd != origcmd)
  bus->ops->write(bus, dev->devfn, PCI_COMMAND, 2, newcmd);

done:
 raw_spin_unlock_irqrestore(&pci_lock, flags);

 return mask_updated;
}
