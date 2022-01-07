
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf {struct pci_epf* name; } ;
struct device {int dummy; } ;


 int kfree (struct pci_epf*) ;
 struct pci_epf* to_pci_epf (struct device*) ;

__attribute__((used)) static void pci_epf_dev_release(struct device *dev)
{
 struct pci_epf *epf = to_pci_epf(dev);

 kfree(epf->name);
 kfree(epf);
}
