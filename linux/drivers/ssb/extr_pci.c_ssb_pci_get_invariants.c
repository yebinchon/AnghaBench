
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_init_invariants {int boardinfo; int sprom; } ;
struct ssb_bus {int dummy; } ;


 int ssb_pci_get_boardinfo (struct ssb_bus*,int *) ;
 int ssb_pci_sprom_get (struct ssb_bus*,int *) ;

int ssb_pci_get_invariants(struct ssb_bus *bus,
      struct ssb_init_invariants *iv)
{
 int err;

 err = ssb_pci_sprom_get(bus, &iv->sprom);
 if (err)
  goto out;
 ssb_pci_get_boardinfo(bus, &iv->boardinfo);

out:
 return err;
}
