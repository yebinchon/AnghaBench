
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pnv_php_slot {TYPE_1__* dn; int ocs; void* dt; void* fdt; int pdev; } ;
struct TYPE_4__ {int * child; int phandle; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int fdt_totalsize (void*) ;
 int kfree (void*) ;
 void* kmemdup (void*,int ,int ) ;
 void* kzalloc (int,int ) ;
 int of_changeset_apply (int *) ;
 int of_changeset_destroy (int *) ;
 int of_changeset_init (int *) ;
 void* of_fdt_unflatten_tree (void*,TYPE_1__*,int *) ;
 int pci_warn (int ,char*,...) ;
 int pnv_pci_get_device_tree (int ,void*,int) ;
 int pnv_php_add_pdns (struct pnv_php_slot*) ;
 int pnv_php_populate_changeset (int *,TYPE_1__*) ;
 int pnv_php_reverse_nodes (TYPE_1__*) ;

__attribute__((used)) static int pnv_php_add_devtree(struct pnv_php_slot *php_slot)
{
 void *fdt, *fdt1, *dt;
 int ret;





 fdt1 = kzalloc(0x10000, GFP_KERNEL);
 if (!fdt1) {
  ret = -ENOMEM;
  goto out;
 }

 ret = pnv_pci_get_device_tree(php_slot->dn->phandle, fdt1, 0x10000);
 if (ret) {
  pci_warn(php_slot->pdev, "Error %d getting FDT blob\n", ret);
  goto free_fdt1;
 }

 fdt = kmemdup(fdt1, fdt_totalsize(fdt1), GFP_KERNEL);
 if (!fdt) {
  ret = -ENOMEM;
  goto free_fdt1;
 }


 dt = of_fdt_unflatten_tree(fdt, php_slot->dn, ((void*)0));
 if (!dt) {
  ret = -EINVAL;
  pci_warn(php_slot->pdev, "Cannot unflatten FDT\n");
  goto free_fdt;
 }


 of_changeset_init(&php_slot->ocs);
 pnv_php_reverse_nodes(php_slot->dn);
 ret = pnv_php_populate_changeset(&php_slot->ocs, php_slot->dn);
 if (ret) {
  pnv_php_reverse_nodes(php_slot->dn);
  pci_warn(php_slot->pdev, "Error %d populating changeset\n",
    ret);
  goto free_dt;
 }

 php_slot->dn->child = ((void*)0);
 ret = of_changeset_apply(&php_slot->ocs);
 if (ret) {
  pci_warn(php_slot->pdev, "Error %d applying changeset\n", ret);
  goto destroy_changeset;
 }


 pnv_php_add_pdns(php_slot);
 php_slot->fdt = fdt;
 php_slot->dt = dt;
 kfree(fdt1);
 goto out;

destroy_changeset:
 of_changeset_destroy(&php_slot->ocs);
free_dt:
 kfree(dt);
 php_slot->dn->child = ((void*)0);
free_fdt:
 kfree(fdt);
free_fdt1:
 kfree(fdt1);
out:
 return ret;
}
