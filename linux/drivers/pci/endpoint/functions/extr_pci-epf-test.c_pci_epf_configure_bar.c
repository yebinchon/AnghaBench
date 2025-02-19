
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_bar {int flags; } ;
struct pci_epf {struct pci_epf_bar* bar; } ;
struct pci_epc_features {int bar_fixed_64bit; scalar_t__* bar_fixed_size; } ;


 int BAR_0 ;
 int BAR_5 ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 scalar_t__* bar_size ;

__attribute__((used)) static void pci_epf_configure_bar(struct pci_epf *epf,
      const struct pci_epc_features *epc_features)
{
 struct pci_epf_bar *epf_bar;
 bool bar_fixed_64bit;
 int i;

 for (i = BAR_0; i <= BAR_5; i++) {
  epf_bar = &epf->bar[i];
  bar_fixed_64bit = !!(epc_features->bar_fixed_64bit & (1 << i));
  if (bar_fixed_64bit)
   epf_bar->flags |= PCI_BASE_ADDRESS_MEM_TYPE_64;
  if (epc_features->bar_fixed_size[i])
   bar_size[i] = epc_features->bar_fixed_size[i];
 }
}
