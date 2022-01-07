
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_epf_group {struct pci_epf* epf; } ;
struct pci_epf {scalar_t__ func_no; } ;
struct pci_epc_group {int function_num_map; struct pci_epc* epc; } ;
struct pci_epc {int dummy; } ;
struct config_item {int dummy; } ;


 scalar_t__ BITS_PER_LONG ;
 int EINVAL ;
 int clear_bit (scalar_t__,int *) ;
 scalar_t__ find_first_zero_bit (int *,scalar_t__) ;
 int pci_epc_add_epf (struct pci_epc*,struct pci_epf*) ;
 int pci_epc_remove_epf (struct pci_epc*,struct pci_epf*) ;
 int pci_epf_bind (struct pci_epf*) ;
 int set_bit (scalar_t__,int *) ;
 struct pci_epc_group* to_pci_epc_group (struct config_item*) ;
 struct pci_epf_group* to_pci_epf_group (struct config_item*) ;

__attribute__((used)) static int pci_epc_epf_link(struct config_item *epc_item,
       struct config_item *epf_item)
{
 int ret;
 u32 func_no = 0;
 struct pci_epf_group *epf_group = to_pci_epf_group(epf_item);
 struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
 struct pci_epc *epc = epc_group->epc;
 struct pci_epf *epf = epf_group->epf;

 func_no = find_first_zero_bit(&epc_group->function_num_map,
          BITS_PER_LONG);
 if (func_no >= BITS_PER_LONG)
  return -EINVAL;

 set_bit(func_no, &epc_group->function_num_map);
 epf->func_no = func_no;

 ret = pci_epc_add_epf(epc, epf);
 if (ret)
  goto err_add_epf;

 ret = pci_epf_bind(epf);
 if (ret)
  goto err_epf_bind;

 return 0;

err_epf_bind:
 pci_epc_remove_epf(epc, epf);

err_add_epf:
 clear_bit(func_no, &epc_group->function_num_map);

 return ret;
}
