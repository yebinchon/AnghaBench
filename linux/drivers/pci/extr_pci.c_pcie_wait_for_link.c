
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int link_active_reporting; } ;


 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_DLLLA ;
 int msleep (int) ;
 int pci_info (struct pci_dev*,char*,char*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;

bool pcie_wait_for_link(struct pci_dev *pdev, bool active)
{
 int timeout = 1000;
 bool ret;
 u16 lnk_status;





 if (!pdev->link_active_reporting) {
  msleep(1100);
  return 1;
 }
 if (active)
  msleep(20);
 for (;;) {
  pcie_capability_read_word(pdev, PCI_EXP_LNKSTA, &lnk_status);
  ret = !!(lnk_status & PCI_EXP_LNKSTA_DLLLA);
  if (ret == active)
   break;
  if (timeout <= 0)
   break;
  msleep(10);
  timeout -= 10;
 }
 if (active && ret)
  msleep(100);
 else if (ret != active)
  pci_info(pdev, "Data Link Layer Link Active not %s in 1000 msec\n",
   active ? "set" : "cleared");
 return ret == active;
}
