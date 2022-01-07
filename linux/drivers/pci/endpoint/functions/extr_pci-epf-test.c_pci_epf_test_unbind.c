
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_test {scalar_t__* reg; int cmd_handler; } ;
struct pci_epf_bar {int dummy; } ;
struct pci_epf {int func_no; struct pci_epf_bar* bar; struct pci_epc* epc; } ;
struct pci_epc {int dummy; } ;


 int BAR_0 ;
 int BAR_5 ;
 int cancel_delayed_work (int *) ;
 struct pci_epf_test* epf_get_drvdata (struct pci_epf*) ;
 int pci_epc_clear_bar (struct pci_epc*,int ,struct pci_epf_bar*) ;
 int pci_epc_stop (struct pci_epc*) ;
 int pci_epf_free_space (struct pci_epf*,scalar_t__,int) ;

__attribute__((used)) static void pci_epf_test_unbind(struct pci_epf *epf)
{
 struct pci_epf_test *epf_test = epf_get_drvdata(epf);
 struct pci_epc *epc = epf->epc;
 struct pci_epf_bar *epf_bar;
 int bar;

 cancel_delayed_work(&epf_test->cmd_handler);
 pci_epc_stop(epc);
 for (bar = BAR_0; bar <= BAR_5; bar++) {
  epf_bar = &epf->bar[bar];

  if (epf_test->reg[bar]) {
   pci_epc_clear_bar(epc, epf->func_no, epf_bar);
   pci_epf_free_space(epf, epf_test->reg[bar], bar);
  }
 }
}
