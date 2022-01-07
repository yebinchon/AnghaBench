
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc {int dummy; } ;
struct device {int dummy; } ;


 int pci_epc_destroy (struct pci_epc*) ;

__attribute__((used)) static void devm_pci_epc_release(struct device *dev, void *res)
{
 struct pci_epc *epc = *(struct pci_epc **)res;

 pci_epc_destroy(epc);
}
