
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcie_pme_service_data {int work; int lock; } ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PCI_EXP_RTSTA ;
 int PCI_EXP_RTSTA_PME ;
 struct pcie_pme_service_data* get_service_data (struct pcie_device*) ;
 int pcie_capability_read_dword (struct pci_dev*,int ,int*) ;
 int pcie_pme_interrupt_enable (struct pci_dev*,int) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pcie_pme_irq(int irq, void *context)
{
 struct pci_dev *port;
 struct pcie_pme_service_data *data;
 u32 rtsta;
 unsigned long flags;

 port = ((struct pcie_device *)context)->port;
 data = get_service_data((struct pcie_device *)context);

 spin_lock_irqsave(&data->lock, flags);
 pcie_capability_read_dword(port, PCI_EXP_RTSTA, &rtsta);

 if (rtsta == (u32) ~0 || !(rtsta & PCI_EXP_RTSTA_PME)) {
  spin_unlock_irqrestore(&data->lock, flags);
  return IRQ_NONE;
 }

 pcie_pme_interrupt_enable(port, 0);
 spin_unlock_irqrestore(&data->lock, flags);


 schedule_work(&data->work);

 return IRQ_HANDLED;
}
