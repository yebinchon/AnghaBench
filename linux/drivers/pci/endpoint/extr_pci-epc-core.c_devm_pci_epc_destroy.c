
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc {int dummy; } ;
struct device {int dummy; } ;


 int dev_WARN_ONCE (struct device*,int,char*) ;
 int devm_pci_epc_match ;
 int devm_pci_epc_release ;
 int devres_destroy (struct device*,int ,int ,struct pci_epc*) ;

void devm_pci_epc_destroy(struct device *dev, struct pci_epc *epc)
{
 int r;

 r = devres_destroy(dev, devm_pci_epc_release, devm_pci_epc_match,
      epc);
 dev_WARN_ONCE(dev, r, "couldn't find PCI EPC resource\n");
}
