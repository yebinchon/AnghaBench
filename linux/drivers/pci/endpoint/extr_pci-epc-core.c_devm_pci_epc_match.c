
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void pci_epc ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_pci_epc_match(struct device *dev, void *res, void *match_data)
{
 struct pci_epc **epc = res;

 return *epc == match_data;
}
