
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_config_quirk {int quirks_list; } ;
struct pci_dev {int dummy; } ;


 int ENXIO ;
 int kfree (struct xen_pcibk_config_quirk*) ;
 int list_del (int *) ;
 struct xen_pcibk_config_quirk* xen_pcibk_find_quirk (struct pci_dev*) ;

int xen_pcibk_config_quirk_release(struct pci_dev *dev)
{
 struct xen_pcibk_config_quirk *quirk;
 int ret = 0;

 quirk = xen_pcibk_find_quirk(dev);
 if (!quirk) {
  ret = -ENXIO;
  goto out;
 }

 list_del(&quirk->quirks_list);
 kfree(quirk);

out:
 return ret;
}
