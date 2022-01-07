
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc_features {int reserved_bar; } ;


 int ffz (int ) ;

unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
     *epc_features)
{
 int free_bar;

 if (!epc_features)
  return 0;

 free_bar = ffz(epc_features->reserved_bar);
 if (free_bar > 5)
  return 0;

 return free_bar;
}
