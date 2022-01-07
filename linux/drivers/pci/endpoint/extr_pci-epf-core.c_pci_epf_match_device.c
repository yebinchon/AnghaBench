
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epf_device_id {scalar_t__* name; } ;
struct pci_epf {int name; } ;


 scalar_t__ strcmp (int ,scalar_t__*) ;

const struct pci_epf_device_id *
pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf)
{
 if (!id || !epf)
  return ((void*)0);

 while (*id->name) {
  if (strcmp(epf->name, id->name) == 0)
   return id;
  id++;
 }

 return ((void*)0);
}
