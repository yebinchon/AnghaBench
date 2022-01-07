
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; TYPE_1__* dev; } ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int EBUSY ;
 unsigned long HZ ;
 int PCI_EXP_DPC_RP_BUSY ;
 int PCI_EXP_DPC_STATUS ;
 unsigned long jiffies ;
 int msleep (int) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int dpc_wait_rp_inactive(struct dpc_dev *dpc)
{
 unsigned long timeout = jiffies + HZ;
 struct pci_dev *pdev = dpc->dev->port;
 u16 cap = dpc->cap_pos, status;

 pci_read_config_word(pdev, cap + PCI_EXP_DPC_STATUS, &status);
 while (status & PCI_EXP_DPC_RP_BUSY &&
     !time_after(jiffies, timeout)) {
  msleep(10);
  pci_read_config_word(pdev, cap + PCI_EXP_DPC_STATUS, &status);
 }
 if (status & PCI_EXP_DPC_RP_BUSY) {
  pci_warn(pdev, "root port still busy\n");
  return -EBUSY;
 }
 return 0;
}
