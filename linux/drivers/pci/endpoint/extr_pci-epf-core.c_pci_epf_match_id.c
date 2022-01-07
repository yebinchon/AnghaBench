
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_device_id {scalar_t__* name; } ;
struct pci_epf {int name; } ;


 scalar_t__ strcmp (int ,scalar_t__*) ;

__attribute__((used)) static int
pci_epf_match_id(const struct pci_epf_device_id *id, const struct pci_epf *epf)
{
 while (id->name[0]) {
  if (strcmp(epf->name, id->name) == 0)
   return 1;
  id++;
 }

 return 0;
}
