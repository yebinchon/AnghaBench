
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int ENOTTY ;
 int PCI_COMMAND ;
 int msleep (int) ;
 int pci_info (struct pci_dev*,char*,int,char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_warn (struct pci_dev*,char*,int,char*) ;

__attribute__((used)) static int pci_dev_wait(struct pci_dev *dev, char *reset_type, int timeout)
{
 int delay = 1;
 u32 id;
 pci_read_config_dword(dev, PCI_COMMAND, &id);
 while (id == ~0) {
  if (delay > timeout) {
   pci_warn(dev, "not ready %dms after %s; giving up\n",
     delay - 1, reset_type);
   return -ENOTTY;
  }

  if (delay > 1000)
   pci_info(dev, "not ready %dms after %s; waiting\n",
     delay - 1, reset_type);

  msleep(delay);
  delay *= 2;
  pci_read_config_dword(dev, PCI_COMMAND, &id);
 }

 if (delay > 1000)
  pci_info(dev, "ready %dms after %s\n", delay - 1,
    reset_type);

 return 0;
}
