
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct device* bus_find_device_by_name (int *,int *,char const*) ;
 int iscntrl (char const) ;
 int pci_bus_type ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_err (struct pci_dev*,char*,char const*) ;
 int pci_has_p2pmem (struct pci_dev*) ;
 int pr_err (char*,int,char const*) ;
 scalar_t__ strcspn (char const*,char*) ;
 int strtobool (char const*,int*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

int pci_p2pdma_enable_store(const char *page, struct pci_dev **p2p_dev,
       bool *use_p2pdma)
{
 struct device *dev;

 dev = bus_find_device_by_name(&pci_bus_type, ((void*)0), page);
 if (dev) {
  *use_p2pdma = 1;
  *p2p_dev = to_pci_dev(dev);

  if (!pci_has_p2pmem(*p2p_dev)) {
   pci_err(*p2p_dev,
    "PCI device has no peer-to-peer memory: %s\n",
    page);
   pci_dev_put(*p2p_dev);
   return -ENODEV;
  }

  return 0;
 } else if ((page[0] == '0' || page[0] == '1') && !iscntrl(page[1])) {






 } else if (!strtobool(page, use_p2pdma)) {
  return 0;
 }

 pr_err("No such PCI device: %.*s\n", (int)strcspn(page, "\n"), page);
 return -ENODEV;
}
