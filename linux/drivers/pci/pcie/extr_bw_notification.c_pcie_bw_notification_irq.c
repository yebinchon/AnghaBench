
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pcie_device {struct pci_dev* port; } ;
struct pci_dev {int subordinate; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCIBIOS_SUCCESSFUL ;
 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_LBMS ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 int pcie_update_link_speed (int ,int) ;

__attribute__((used)) static irqreturn_t pcie_bw_notification_irq(int irq, void *context)
{
 struct pcie_device *srv = context;
 struct pci_dev *port = srv->port;
 u16 link_status, events;
 int ret;

 ret = pcie_capability_read_word(port, PCI_EXP_LNKSTA, &link_status);
 events = link_status & PCI_EXP_LNKSTA_LBMS;

 if (ret != PCIBIOS_SUCCESSFUL || !events)
  return IRQ_NONE;

 pcie_capability_write_word(port, PCI_EXP_LNKSTA, events);
 pcie_update_link_speed(port->subordinate, link_status);
 return IRQ_WAKE_THREAD;
}
