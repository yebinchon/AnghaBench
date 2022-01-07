
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pnv_php_slot {int * fdt; TYPE_1__* dn; int * dt; int ocs; } ;
struct TYPE_3__ {int * child; } ;


 int kfree (int *) ;
 int of_changeset_destroy (int *) ;
 int pnv_php_detach_device_nodes (TYPE_1__*) ;
 int pnv_php_rmv_pdns (TYPE_1__*) ;

__attribute__((used)) static void pnv_php_rmv_devtree(struct pnv_php_slot *php_slot)
{
 pnv_php_rmv_pdns(php_slot->dn);





 if (php_slot->fdt)
  of_changeset_destroy(&php_slot->ocs);
 pnv_php_detach_device_nodes(php_slot->dn);

 if (php_slot->fdt) {
  kfree(php_slot->dt);
  kfree(php_slot->fdt);
  php_slot->dt = ((void*)0);
  php_slot->dn->child = ((void*)0);
  php_slot->fdt = ((void*)0);
 }
}
