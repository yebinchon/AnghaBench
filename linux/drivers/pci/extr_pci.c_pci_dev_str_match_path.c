
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PCI_DEVFN (int,int) ;
 int kfree (char*) ;
 char* kmemdup_nul (char const*,int,int ) ;
 int pci_domain_nr (TYPE_1__*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int sscanf (char*,char*,int*,int*,...) ;
 char* strchrnul (char const*,char) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int pci_dev_str_match_path(struct pci_dev *dev, const char *path,
      const char **endptr)
{
 int ret;
 int seg, bus, slot, func;
 char *wpath, *p;
 char end;

 *endptr = strchrnul(path, ';');

 wpath = kmemdup_nul(path, *endptr - path, GFP_KERNEL);
 if (!wpath)
  return -ENOMEM;

 while (1) {
  p = strrchr(wpath, '/');
  if (!p)
   break;
  ret = sscanf(p, "/%x.%x%c", &slot, &func, &end);
  if (ret != 2) {
   ret = -EINVAL;
   goto free_and_exit;
  }

  if (dev->devfn != PCI_DEVFN(slot, func)) {
   ret = 0;
   goto free_and_exit;
  }







  dev = pci_upstream_bridge(dev);
  if (!dev) {
   ret = 0;
   goto free_and_exit;
  }

  *p = 0;
 }

 ret = sscanf(wpath, "%x:%x:%x.%x%c", &seg, &bus, &slot,
       &func, &end);
 if (ret != 4) {
  seg = 0;
  ret = sscanf(wpath, "%x:%x.%x%c", &bus, &slot, &func, &end);
  if (ret != 3) {
   ret = -EINVAL;
   goto free_and_exit;
  }
 }

 ret = (seg == pci_domain_nr(dev->bus) &&
        bus == dev->bus->number &&
        dev->devfn == PCI_DEVFN(slot, func));

free_and_exit:
 kfree(wpath);
 return ret;
}
