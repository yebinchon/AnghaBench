
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_vpd {int flag; scalar_t__ busy; scalar_t__ cap; } ;
struct pci_dev {struct pci_vpd* vpd; } ;


 int EINTR ;
 int ETIMEDOUT ;
 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int pci_user_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 int pci_warn (struct pci_dev*,char*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,unsigned long) ;

__attribute__((used)) static int pci_vpd_wait(struct pci_dev *dev)
{
 struct pci_vpd *vpd = dev->vpd;
 unsigned long timeout = jiffies + msecs_to_jiffies(125);
 unsigned long max_sleep = 16;
 u16 status;
 int ret;

 if (!vpd->busy)
  return 0;

 do {
  ret = pci_user_read_config_word(dev, vpd->cap + PCI_VPD_ADDR,
      &status);
  if (ret < 0)
   return ret;

  if ((status & PCI_VPD_ADDR_F) == vpd->flag) {
   vpd->busy = 0;
   return 0;
  }

  if (fatal_signal_pending(current))
   return -EINTR;

  if (time_after(jiffies, timeout))
   break;

  usleep_range(10, max_sleep);
  if (max_sleep < 1024)
   max_sleep *= 2;
 } while (1);

 pci_warn(dev, "VPD access failed.  This is likely a firmware bug on this device.  Contact the card vendor for a firmware update\n");
 return -ETIMEDOUT;
}
