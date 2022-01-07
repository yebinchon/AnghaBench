
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; TYPE_1__* dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int PCI_EXP_DPC_STATUS ;
 int PCI_EXP_DPC_STATUS_INTERRUPT ;
 int PCI_EXP_DPC_STATUS_TRIGGER ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;

__attribute__((used)) static irqreturn_t dpc_irq(int irq, void *context)
{
 struct dpc_dev *dpc = (struct dpc_dev *)context;
 struct pci_dev *pdev = dpc->dev->port;
 u16 cap = dpc->cap_pos, status;

 pci_read_config_word(pdev, cap + PCI_EXP_DPC_STATUS, &status);

 if (!(status & PCI_EXP_DPC_STATUS_INTERRUPT) || status == (u16)(~0))
  return IRQ_NONE;

 pci_write_config_word(pdev, cap + PCI_EXP_DPC_STATUS,
         PCI_EXP_DPC_STATUS_INTERRUPT);
 if (status & PCI_EXP_DPC_STATUS_TRIGGER)
  return IRQ_WAKE_THREAD;
 return IRQ_HANDLED;
}
