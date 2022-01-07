
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_test {int test_reg_bar; int * reg; struct pci_epc_features* epc_features; } ;
struct pci_epf_bar {int flags; } ;
struct device {int dummy; } ;
struct pci_epf {int func_no; struct pci_epf_bar* bar; struct device dev; struct pci_epc* epc; } ;
struct pci_epc_features {int reserved_bar; } ;
struct pci_epc {int dummy; } ;
typedef enum pci_barno { ____Placeholder_pci_barno } pci_barno ;


 int BAR_0 ;
 int BAR_5 ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 int dev_err (struct device*,char*,int) ;
 struct pci_epf_test* epf_get_drvdata (struct pci_epf*) ;
 int pci_epc_set_bar (struct pci_epc*,int ,struct pci_epf_bar*) ;
 int pci_epf_free_space (struct pci_epf*,int ,int) ;

__attribute__((used)) static int pci_epf_test_set_bar(struct pci_epf *epf)
{
 int bar, add;
 int ret;
 struct pci_epf_bar *epf_bar;
 struct pci_epc *epc = epf->epc;
 struct device *dev = &epf->dev;
 struct pci_epf_test *epf_test = epf_get_drvdata(epf);
 enum pci_barno test_reg_bar = epf_test->test_reg_bar;
 const struct pci_epc_features *epc_features;

 epc_features = epf_test->epc_features;

 for (bar = BAR_0; bar <= BAR_5; bar += add) {
  epf_bar = &epf->bar[bar];





  add = (epf_bar->flags & PCI_BASE_ADDRESS_MEM_TYPE_64) ? 2 : 1;

  if (!!(epc_features->reserved_bar & (1 << bar)))
   continue;

  ret = pci_epc_set_bar(epc, epf->func_no, epf_bar);
  if (ret) {
   pci_epf_free_space(epf, epf_test->reg[bar], bar);
   dev_err(dev, "Failed to set BAR%d\n", bar);
   if (bar == test_reg_bar)
    return ret;
  }
 }

 return 0;
}
